import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';
import 'package:flutter_bci_assessment_app/features/src/configs/app_strings.dart';

import 'wrapper_page.dart';

class CreateUserPage extends StatefulWidget {
  const CreateUserPage({
    super.key,
  });

  @override
  State<CreateUserPage> createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneNumberController;
  late TextEditingController assignBranchController;
  late TextEditingController accountController;
  late TextEditingController ageController;
  late TextEditingController addressController;
  late TextEditingController cityController;
  late TextEditingController countryController;
  late TextEditingController passwordController;
  late TextEditingController passwordConfirmationController;

  @override
  void initState() {
    super.initState();

    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneNumberController = TextEditingController();
    assignBranchController = TextEditingController();
    accountController = TextEditingController();
    ageController = TextEditingController();
    addressController = TextEditingController();
    cityController = TextEditingController();
    countryController = TextEditingController();
    passwordController = TextEditingController();
    passwordConfirmationController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    assignBranchController.dispose();
    accountController.dispose();
    ageController.dispose();
    addressController.dispose();
    cityController.dispose();
    countryController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WrapperPage(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppGaps.kGap16,
          Text(
            AppStrings.createUser,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 18,
                ),
          ),
          AppGaps.kGap12,
          AppGaps.kGap12,
          Expanded(
            child: SizedBox(
              width: 825,
              child: LayoutBuilder(
                builder: (context, constrains) {
                  final constrainsWidth = constrains.maxWidth;
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        if (constrainsWidth <= 550)
                          Form(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 48,
                                  child: TextFormField(
                                    controller: nameController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.name,
                                    ),
                                  ),
                                ),
                                AppGaps.kGap12,
                                SizedBox(
                                  height: 48,
                                  child: TextFormField(
                                    controller: emailController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.email,
                                    ),
                                  ),
                                ),
                                AppGaps.kGap12,
                                SizedBox(
                                  height: 48,
                                  child: TextFormField(
                                    controller: phoneNumberController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.phoneNumber,
                                    ),
                                  ),
                                ),
                                AppGaps.kGap12,
                                SizedBox(
                                  height: 48,
                                  child: TextFormField(
                                    controller: assignBranchController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.assignBranch,
                                    ),
                                  ),
                                ),
                                AppGaps.kGap12,
                                SizedBox(
                                  height: 48,
                                  child: TextFormField(
                                    controller: accountController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.account,
                                    ),
                                  ),
                                ),
                                AppGaps.kGap12,
                                SizedBox(
                                  height: 48,
                                  child: TextFormField(
                                    controller: ageController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.age,
                                    ),
                                  ),
                                ),
                                AppGaps.kGap12,
                                SizedBox(
                                  height: 48,
                                  child: TextFormField(
                                    controller: addressController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.address,
                                    ),
                                  ),
                                ),
                                AppGaps.kGap12,
                                SizedBox(
                                  height: 48,
                                  child: TextFormField(
                                    controller: cityController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.city,
                                    ),
                                  ),
                                ),
                                AppGaps.kGap12,
                                SizedBox(
                                  height: 48,
                                  child: TextFormField(
                                    controller: countryController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.country,
                                    ),
                                  ),
                                ),
                                AppGaps.kGap12,
                                SizedBox(
                                  height: 48,
                                  child: TextFormField(
                                    controller: passwordController,
                                    decoration: InputDecoration(
                                      labelText: AppStrings.password,
                                      suffixIcon: IconButton(
                                        icon: const AppIcon(
                                          icon: AppIcons.kEyeIcon,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                ),
                                AppGaps.kGap12,
                                SizedBox(
                                  height: 48,
                                  child: TextFormField(
                                    controller: passwordConfirmationController,
                                    decoration: InputDecoration(
                                      labelText: AppStrings.confirmPassword,
                                      suffixIcon: IconButton(
                                        icon: const AppIcon(
                                          icon: AppIcons.kEyeIcon,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (constrainsWidth > 550 && constrainsWidth <= 700)
                          Form(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: 48,
                                        child: TextFormField(
                                          controller: nameController,
                                          decoration: const InputDecoration(
                                            labelText: AppStrings.name,
                                          ),
                                        ),
                                      ),
                                    ),
                                    AppGaps.kGap12,
                                    Expanded(
                                      child: SizedBox(
                                        height: 48,
                                        child: TextFormField(
                                          controller: emailController,
                                          decoration: const InputDecoration(
                                            labelText: AppStrings.email,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                AppGaps.kGap12,
                                Row(
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: 48,
                                        child: TextFormField(
                                          controller: phoneNumberController,
                                          decoration: const InputDecoration(
                                            labelText: AppStrings.phoneNumber,
                                          ),
                                        ),
                                      ),
                                    ),
                                    AppGaps.kGap12,
                                    Expanded(
                                      child: SizedBox(
                                        height: 48,
                                        child: TextFormField(
                                          controller: assignBranchController,
                                          decoration: const InputDecoration(
                                            labelText: AppStrings.assignBranch,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                AppGaps.kGap12,
                                Row(
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: 48,
                                        child: TextFormField(
                                          controller: accountController,
                                          decoration: const InputDecoration(
                                            labelText: AppStrings.account,
                                          ),
                                        ),
                                      ),
                                    ),
                                    AppGaps.kGap12,
                                    Expanded(
                                      child: SizedBox(
                                        height: 48,
                                        child: TextFormField(
                                          controller: ageController,
                                          decoration: const InputDecoration(
                                            labelText: AppStrings.age,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                AppGaps.kGap12,
                                Row(
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: 48,
                                        child: TextFormField(
                                          controller: addressController,
                                          decoration: const InputDecoration(
                                            labelText: AppStrings.address,
                                          ),
                                        ),
                                      ),
                                    ),
                                    AppGaps.kGap12,
                                    Expanded(
                                      child: SizedBox(
                                        height: 48,
                                        child: TextFormField(
                                          controller: cityController,
                                          decoration: const InputDecoration(
                                            labelText: AppStrings.city,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                AppGaps.kGap12,
                                Row(
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: 48,
                                        child: TextFormField(
                                          controller: countryController,
                                          decoration: const InputDecoration(
                                            labelText: AppStrings.country,
                                          ),
                                        ),
                                      ),
                                    ),
                                    AppGaps.kGap12,
                                    Expanded(
                                      child: SizedBox(
                                        height: 48,
                                        child: TextFormField(
                                          controller: passwordController,
                                          decoration: InputDecoration(
                                            labelText: AppStrings.password,
                                            suffixIcon: IconButton(
                                              icon: const AppIcon(
                                                icon: AppIcons.kEyeIcon,
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                AppGaps.kGap12,
                                SizedBox(
                                  height: 48,
                                  child: TextFormField(
                                    controller: passwordConfirmationController,
                                    decoration: InputDecoration(
                                      labelText: AppStrings.confirmPassword,
                                      suffixIcon: IconButton(
                                        icon: const AppIcon(
                                          icon: AppIcons.kEyeIcon,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (constrainsWidth > 700)
                          Form(
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              runSpacing: 12,
                              spacing: 14,
                              children: [
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  height: 48,
                                  child: TextFormField(
                                    controller: nameController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.name,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  height: 48,
                                  child: TextFormField(
                                    controller: emailController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.email,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  height: 48,
                                  child: TextFormField(
                                    controller: phoneNumberController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.phoneNumber,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  height: 48,
                                  child: TextFormField(
                                    controller: assignBranchController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.assignBranch,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  height: 48,
                                  child: TextFormField(
                                    controller: accountController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.account,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  height: 48,
                                  child: TextFormField(
                                    controller: ageController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.age,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  height: 48,
                                  child: TextFormField(
                                    controller: addressController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.address,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  height: 48,
                                  child: TextFormField(
                                    controller: cityController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.city,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  height: 48,
                                  child: TextFormField(
                                    controller: countryController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.country,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.49,
                                  height: 48,
                                  child: TextFormField(
                                    controller: passwordController,
                                    decoration: InputDecoration(
                                      labelText: AppStrings.password,
                                      suffixIcon: IconButton(
                                        icon: const AppIcon(
                                          icon: AppIcons.kEyeIcon,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.49,
                                  height: 48,
                                  child: TextFormField(
                                    controller: passwordConfirmationController,
                                    decoration: InputDecoration(
                                      labelText: AppStrings.confirmPassword,
                                      suffixIcon: IconButton(
                                        icon: const AppIcon(
                                          icon: AppIcons.kEyeIcon,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        AppGaps.kGap12,
                        AppGaps.kGap12,
                        AppGaps.kGap6,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 150,
                              height: 40,
                              child: ElevatedButton(
                                style: Theme.of(context)
                                    .elevatedButtonTheme
                                    .style
                                    ?.copyWith(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        AppColors.kSecondaryElevatedButtonColor,
                                      ),
                                    ),
                                onPressed: () {},
                                child: Text(
                                  AppStrings.cancel,
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                            ),
                            AppGaps.kGap12,
                            SizedBox(
                              width: 150,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  AppStrings.save,
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
