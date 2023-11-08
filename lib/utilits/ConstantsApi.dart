enum Environment { DEV, STAGING, PROD }

class ConstantApi {
  static Map<String, dynamic> _config = _Config.debugConstants;

  static String loginUrl = SERVER_ONE + "user/login";
  static String dashboardUrl = SERVER_ONE + "dashboard/dashboardStatus";
  static String userProfile = SERVER_ONE + "user/viewProfile";
  static String customerList = SERVER_ONE + "customer/customerList";
  static String vendorList = SERVER_ONE + "vendor/VendorList";
  static String addVendorUrl = SERVER_ONE + "vendor/addVendor";
  static String editVendorUrl = SERVER_ONE + "vendor/editVendor";
  static String addCustomerUrl = SERVER_ONE + "customer/addCustomer";
  static String editCustomerUrl = SERVER_ONE + "customer/editCustomer";
  static String addEmployeeUrl = SERVER_ONE + "employee/addEmployee";
  static String employeeListUrl = SERVER_ONE + "employee/employeeList";
  static String addProductUrl = SERVER_ONE + "settings/addMaterial";
  static String viewProductUrl = SERVER_ONE + "settings/viewMaterial";
  static String viewProductListUrl = SERVER_ONE + "settings/viewMaterialList";
  static String employeeProfiletUrl = SERVER_ONE + "employee/viewEmployee";
  static String employeeEdittUrl = SERVER_ONE + "employee/editEmployee";
  static String productListUrl = SERVER_ONE + "settings/viewMaterialList";
  static String editProductUrl = SERVER_ONE + "settings/editMaterial";
  static String deliveryListUrl = SERVER_ONE + "delivary/manageDelivary";
  static String purchaseQuotationListUrl = SERVER_ONE + "quotation/managePurchaseQuotation";
  static String manageQuotationListUrl = SERVER_ONE + "quotation/manageQuotation";
  static String approveQuotationUrl = SERVER_ONE + "quotation/approveQuotation";
  static String movePurchaseUrl = SERVER_ONE + "quotation/moveToDelivary";
  static String addQuotationUrl = SERVER_ONE + "quotation/addQuotation";
  static String ManageapproveQuotationListUrl = SERVER_ONE + "quotation/manageApprvedQuotation";
  static String manageVendorPurchase = SERVER_ONE + "purchase/manageVendorPurchase";
  static String managePurchaseUrl = SERVER_ONE + "purchase/managechecklistpurchase";
  static String addPurchaseUrl = SERVER_ONE + "purchase/addPurchase";
  static String viewCustomerUrl = SERVER_ONE + "customer/viewCustomer";
  static String quotationReportUrl = SERVER_ONE + "report/quotationReport";
  static String paymentReportUrl = SERVER_ONE + "report/paymentReports";
  static String purchaseReportUrl = SERVER_ONE + "report/purchaseReport";
  static String employeeRoleItemUrl = SERVER_ONE + "settings/viewRoleList";
  static String paymentSummaryUrl = SERVER_ONE + "quotation/customerPayment";

  static String SOMETHING_WRONG = "Some thing wrong";
  static String NO_INTERNET = "No internet Connection";
  static String BAD_RESPONSE = "Bad Response";
  static String UNAUTHORIZED = "Un Athurized";

  static void setEnvironment(Environment env) {
    switch (env) {
      case Environment.DEV:
        _config = _Config.debugConstants;
        break;
      case Environment.STAGING:
        _config = _Config.stagingConstants;
        break;
      case Environment.PROD:
        _config = _Config.prodConstants;
        break;
    }
  }

  static get SERVER_ONE {
    return _config[_Config.SERVER_ONE];
  }

  static get BUILD_VARIANTS {
    return _config[_Config.BUILD_VARIANTS];
  }
}

class _Config {
  static const SERVER_ONE = "";
  static const BUILD_VARIANTS = "mahavir-dev";

  static Map<String, dynamic> debugConstants = {
    SERVER_ONE: "http://dev.venpep.co.in/mahaveersquare_demo/api/android/v1/",
    BUILD_VARIANTS: "mahavir-dev",
  };

  static Map<String, dynamic> stagingConstants = {
    SERVER_ONE: "http://dev.venpep.co.in/mahaveersquare_demo/api/android/v1/",
    BUILD_VARIANTS: "mahavir-dev",
  };

  static Map<String, dynamic> prodConstants = {
    SERVER_ONE: "http://dev.venpep.co.in/mahaveersquare_demo/api/android/v1/",
    BUILD_VARIANTS: "mahavir-dev",
  };
}
