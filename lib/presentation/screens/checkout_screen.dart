import 'package:eventhub_lite/business/test%20busy/checkout_viewodel.dart';
import 'package:eventhub_lite/presentation/screens/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:eventhub_lite/domain/models/checkout_response.dart';
// adjust path

class CheckoutScreen extends ConsumerStatefulWidget {
  final String eventId;

  const CheckoutScreen({required this.eventId, super.key});

  @override
  ConsumerState<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends ConsumerState<CheckoutScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    final checkoutState = ref.watch(checkoutProvider);
    final checkoutNotifier = ref.read(checkoutProvider.notifier);

    final isLoading = checkoutState.isLoading;

    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) =>
                    value!.isEmpty || !value.contains('@') ? 'Invalid email' : null,
              ),
              DropdownButtonFormField<int>(
                value: _quantity,
                items: List.generate(
                  10,
                  (i) => DropdownMenuItem(
                    value: i + 1,
                    child: Text('${i + 1}'),
                  ),
                ),
                onChanged: (value) => setState(() => _quantity = value!),
                decoration: const InputDecoration(labelText: 'Quantity'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: isLoading
                    ? null
                    : () async {
                        if (_formKey.currentState!.validate()) {
                          await checkoutNotifier.checkout(
                            widget.eventId,
                            _quantity,
                            _nameController.text,
                            _emailController.text,
                          );

                          final state = ref.read(checkoutProvider);
                          state.when(
                            data: (checkoutResponse) {
                              if (checkoutResponse != CheckoutResponse.empty()) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => SuccessScreen(
                                      reference: checkoutResponse.reference,
                                    ),
                                  ),
                                );
                                checkoutNotifier.reset();
                              }
                            },
                            error: (err, _) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(err.toString())),
                              );
                            },
                            loading: () {},
                          );
                        }
                      },
                child: isLoading
                    ? const CircularProgressIndicator()
                    : const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
