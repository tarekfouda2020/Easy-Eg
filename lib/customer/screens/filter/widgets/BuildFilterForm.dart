part of 'FilterWidgetsImports.dart';

class BuildFilterForm extends StatelessWidget {
  final FilterData filterData;

  const BuildFilterForm({required this.filterData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Form(
        key: filterData.formKey,
        child: Column(
          children: [
            // DropdownTextField<DropDownModel>(
            //   label: tr(context,"country"),
            //   dropKey: filterData.country,
            //   margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            //   showSelectedItem: false,
            //   fillColor: MyColors.white,
            //   borderColor: MyColors.greyWhite,
            //   validate: (DropDownModel value) => value.validateDropDown(context),
            //   onChange: (DropDownModel model)=> filterData.onCountryChange(model),
            //   finData: (filter) async => await CustomerRepository(context).getCountries(false),
            // ),
            DropdownTextField<DropDownModel>(
              label: tr(context, "government"),
              dropKey: filterData.govern,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              showSelectedItem: false,
              fillColor: MyColors.white,
              borderColor: MyColors.grey,
              textColor: MyColors.black,
              hintColor: MyColors.blackOpacity,
              validate: (DropDownModel value) =>
                  value.validateDropDown(context),
              onChange: (DropDownModel model) =>
                  filterData.onGovernChange(model),
              finData: (filter) async => await CustomerRepository(context)
                  .getGovernments(filterData.countryModel?.id, false),
            ),
            DropdownTextField<DropDownModel>(
              label: tr(context, "city"),
              dropKey: filterData.city,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              showSelectedItem: false,
              fillColor: MyColors.white,
              borderColor: MyColors.grey,
              textColor: MyColors.black,
              hintColor: MyColors.blackOpacity,
              validate: (DropDownModel value) =>
                  value.validateDropDown(context),
              onChange: (DropDownModel model) => filterData.onCityChange(model),
              finData: (filter) async => await CustomerRepository(context)
                  .getCities(filterData.governModel?.id, false),
            ),
            DropdownTextField<DropDownModel>(
              label: tr(context, "region"),
              dropKey: filterData.region,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              showSelectedItem: false,
              fillColor: MyColors.white,
              borderColor: MyColors.grey,
              textColor: MyColors.black,
              hintColor: MyColors.blackOpacity,
              validate: (DropDownModel value) =>
                  value.validateDropDown(context),
              onChange: (DropDownModel model) =>
                  filterData.onRegionChange(model),
              finData: (filter) async => await CustomerRepository(context)
                  .getRegions(filterData.cityModel?.id, false),
            ),
            DropdownTextField<CategoryModel>(
              label: tr(context, "category"),
              dropKey: filterData.cat,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              showSelectedItem: false,
              fillColor: MyColors.white,
              borderColor: MyColors.grey,
              textColor: MyColors.black,
              hintColor: MyColors.blackOpacity,
              validate: (CategoryModel value) =>
                  value.validateDropDown(context),
              onChange: (CategoryModel model) =>
                  filterData.onCategoryChange(model),
              finData: (filter) async => await CustomerRepository(context)
                  .getCategories(
                      filterData.regionModel?.id ?? 0,
                      filterData.cityModel?.id ?? 0,
                      filterData.governModel?.id ?? 0,
                      false),
            ),
            DropdownTextField<SubCategoryModel>(
              label: tr(context, "subCategory"),
              dropKey: filterData.subCat,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              showSelectedItem: false,
              fillColor: MyColors.white,
              borderColor: MyColors.grey,
              textColor: MyColors.black,
              hintColor: MyColors.blackOpacity,
              validate: (SubCategoryModel value) =>
                  value.validateDropDown(context),
              onChange: (SubCategoryModel model) =>
                  filterData.onSubCategoryChange(model),
              finData: (filter) async =>
                  filterData.catModel?.subCategory ?? <SubCategoryModel>[],
            ),
          ],
        ),
      ),
    );
  }
}
