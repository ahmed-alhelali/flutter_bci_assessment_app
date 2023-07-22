import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';
import 'package:flutter_bci_assessment_app/core/src/configs/items/account_drop_down_items.dart';
import 'package:flutter_bci_assessment_app/core/src/configs/items/branch_drop_down_items.dart';
import 'package:flutter_bci_assessment_app/core/src/models/user.dart';
import 'package:flutter_bci_assessment_app/core/src/providers/api_services_state_notifier_provider.dart';
import 'package:flutter_bci_assessment_app/core/src/theme/app_formatters.dart';
import 'package:flutter_bci_assessment_app/features/src/wrappers/pages/wrapper_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateUserPage extends ConsumerStatefulWidget {
  const CreateUserPage({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CreateUserPageState();
}

class _CreateUserPageState extends ConsumerState<CreateUserPage> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneNumberController;
  late SingleValueDropDownController assignBranchController;
  late SingleValueDropDownController accountController;
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
    assignBranchController = SingleValueDropDownController();
    accountController = SingleValueDropDownController();
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
                        AppGaps.kGap12,
                        if (constrainsWidth <= 480)
                          Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: nameController,
                                  decoration: const InputDecoration(
                                    labelText: AppStrings.name,
                                  ),
                                ),
                                AppGaps.kGap12,
                                TextFormField(
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  inputFormatters: [
                                    AppFormatters.emailFormatter,
                                  ],
                                  decoration: const InputDecoration(
                                    labelText: AppStrings.email,
                                  ),
                                ),
                                AppGaps.kGap12,
                                TextFormField(
                                  controller: phoneNumberController,
                                  decoration: const InputDecoration(
                                    labelText: AppStrings.phoneNumber,
                                  ),
                                ),
                                AppGaps.kGap12,
                                DropDownTextField(
                                  clearOption: true,
                                  textFieldDecoration: const InputDecoration(
                                    labelText: AppStrings.assignBranch,
                                  ),
                                  validator: (value) {
                                    if (value == null) {
                                      return "Required field";
                                    } else {
                                      return null;
                                    }
                                  },
                                  dropDownItemCount: branchDropDownItems.length,
                                  dropDownList: branchDropDownItems,
                                  onChanged: (val) {},
                                ),
                                AppGaps.kGap12,
                                DropDownTextField(
                                  textFieldDecoration: const InputDecoration(
                                    labelText: AppStrings.account,
                                  ),
                                  clearOption: true,
                                  controller: accountController,
                                  validator: (value) {
                                    if (value == null) {
                                      return "Required field";
                                    } else {
                                      return null;
                                    }
                                  },
                                  dropDownItemCount:
                                      accountsDropDownItems.length,
                                  dropDownList: accountsDropDownItems,
                                  onChanged: (val) {},
                                ),
                                AppGaps.kGap12,
                                TextFormField(
                                  controller: ageController,
                                  inputFormatters: [
                                    AppFormatters.numbersFormatter,
                                  ],
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    labelText: AppStrings.age,
                                  ),
                                ),
                                AppGaps.kGap12,
                                TextFormField(
                                  controller: addressController,
                                  decoration: const InputDecoration(
                                    labelText: AppStrings.address,
                                  ),
                                ),
                                AppGaps.kGap12,
                                TextFormField(
                                  controller: cityController,
                                  decoration: const InputDecoration(
                                    labelText: AppStrings.city,
                                  ),
                                ),
                                AppGaps.kGap12,
                                TextFormField(
                                  controller: countryController,
                                  decoration: const InputDecoration(
                                    labelText: AppStrings.country,
                                  ),
                                ),
                                AppGaps.kGap12,
                                TextFormField(
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
                                AppGaps.kGap12,
                                TextFormField(
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
                              ],
                            ),
                          ),
                        if (constrainsWidth > 480 && constrainsWidth <= 700)
                          Form(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: nameController,
                                        decoration: const InputDecoration(
                                          labelText: AppStrings.name,
                                        ),
                                      ),
                                    ),
                                    AppGaps.kGap12,
                                    Expanded(
                                      child: TextFormField(
                                        controller: emailController,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        inputFormatters: [
                                          AppFormatters.emailFormatter,
                                        ],
                                        decoration: const InputDecoration(
                                          labelText: AppStrings.email,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                AppGaps.kGap12,
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: phoneNumberController,
                                        decoration: const InputDecoration(
                                          labelText: AppStrings.phoneNumber,
                                        ),
                                      ),
                                    ),
                                    AppGaps.kGap12,
                                    Expanded(
                                      child: DropDownTextField(
                                        clearOption: true,
                                        textFieldDecoration:
                                            const InputDecoration(
                                          labelText: AppStrings.assignBranch,
                                        ),
                                        validator: (value) {
                                          if (value == null) {
                                            return "Required field";
                                          } else {
                                            return null;
                                          }
                                        },
                                        dropDownItemCount:
                                            branchDropDownItems.length,
                                        dropDownList: branchDropDownItems,
                                        onChanged: (val) {},
                                      ),
                                    ),
                                  ],
                                ),
                                AppGaps.kGap12,
                                Row(
                                  children: [
                                    Expanded(
                                      child: DropDownTextField(
                                        clearOption: true,
                                        controller: accountController,
                                        validator: (value) {
                                          if (value == null) {
                                            return "Required field";
                                          } else {
                                            return null;
                                          }
                                        },
                                        textFieldDecoration:
                                            const InputDecoration(
                                          labelText: AppStrings.account,
                                        ),
                                        dropDownItemCount:
                                            accountsDropDownItems.length,
                                        dropDownList: accountsDropDownItems,
                                        onChanged: (val) {},
                                      ),
                                    ),
                                    AppGaps.kGap12,
                                    Expanded(
                                      child: TextFormField(
                                        controller: ageController,
                                        inputFormatters: [
                                          AppFormatters.numbersFormatter,
                                        ],
                                        keyboardType: TextInputType.number,
                                        decoration: const InputDecoration(
                                          labelText: AppStrings.age,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                AppGaps.kGap12,
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: addressController,
                                        decoration: const InputDecoration(
                                          labelText: AppStrings.address,
                                        ),
                                      ),
                                    ),
                                    AppGaps.kGap12,
                                    Expanded(
                                      child: TextFormField(
                                        controller: cityController,
                                        decoration: const InputDecoration(
                                          labelText: AppStrings.city,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                AppGaps.kGap12,
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: countryController,
                                        decoration: const InputDecoration(
                                          labelText: AppStrings.country,
                                        ),
                                      ),
                                    ),
                                    AppGaps.kGap12,
                                    Expanded(
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
                                  ],
                                ),
                                AppGaps.kGap12,
                                TextFormField(
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
                              ],
                            ),
                          ),
                        if (constrainsWidth > 700)
                          Form(
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              runSpacing: 10,
                              spacing: 14,
                              children: [
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  child: TextFormField(
                                    controller: nameController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.name,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  child: TextFormField(
                                    controller: emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    inputFormatters: [
                                      AppFormatters.emailFormatter,
                                    ],
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.email,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  child: TextFormField(
                                    controller: phoneNumberController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.phoneNumber,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  child: DropDownTextField(
                                    clearOption: true,
                                    textFieldDecoration: const InputDecoration(
                                      labelText: AppStrings.assignBranch,
                                    ),
                                    validator: (value) {
                                      if (value == null) {
                                        return "Required field";
                                      } else {
                                        return null;
                                      }
                                    },
                                    dropDownItemCount:
                                        branchDropDownItems.length,
                                    dropDownList: branchDropDownItems,
                                    onChanged: (val) {},
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  child: DropDownTextField(
                                    clearOption: true,
                                    controller: accountController,
                                    validator: (value) {
                                      if (value == null) {
                                        return "Required field";
                                      } else {
                                        return null;
                                      }
                                    },
                                    textFieldDecoration: const InputDecoration(
                                      labelText: AppStrings.account,
                                    ),
                                    dropDownItemCount:
                                        accountsDropDownItems.length,
                                    dropDownList: accountsDropDownItems,
                                    onChanged: (val) {},
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  child: TextFormField(
                                    controller: ageController,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      AppFormatters.numbersFormatter,
                                    ],
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.age,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  child: TextFormField(
                                    controller: addressController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.address,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  child: TextFormField(
                                    controller: cityController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.city,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.32,
                                  child: TextFormField(
                                    controller: countryController,
                                    decoration: const InputDecoration(
                                      labelText: AppStrings.country,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: constrainsWidth * 0.49,
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
                                onPressed: () async {
                                  const user = User(
                                    name: "name",
                                    phone: "phone",
                                    branch: "branch",
                                    account: "account",
                                    age: "age",
                                    address: "address",
                                    city: "city",
                                    country: "country",
                                    password: "password",
                                    createdAt: "createdAt",
                                  );

                                  await ref
                                      .read(apiServiceStateNotifierProvider
                                          .notifier)
                                      .createUser(user: user);
                                },
                                child: Text(
                                  AppStrings.save,
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                        AppGaps.kGap12,
                        AppGaps.kGap12,
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
