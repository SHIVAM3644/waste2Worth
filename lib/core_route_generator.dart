
// import 'package:core_utility/components/core_document_open_view.dart';
// import 'package:core_utility/components/core_global_maintenance_break_view.dart';
// import 'package:core_utility/core_auth.dart';
// import 'package:core_utility/core_auth_module/view/core_local_auth_view.dart';
// import 'package:core_utility/core_auth_module/view/core_password_reset_view.dart';
// import 'package:core_utility/core_auth_module/view/core_sign_in_view.dart';
// import 'package:core_utility/core_auth_module/view/core_sign_up_view.dart';
// import 'package:core_utility/core_dashboard_module/model/core_all_order_model.dart';
// import 'package:core_utility/core_dashboard_module/model/core_transaction_model.dart';
// import 'package:core_utility/core_dashboard_module/view/core_all_family_member_view.dart';
// import 'package:core_utility/core_dashboard_module/view/core_assets_holding_view.dart';
// import 'package:core_utility/core_dashboard_module/view/core_dashboard_view.dart';
// import 'package:core_utility/core_dashboard_module/view/freedom_sip/core_freedom_sip_detail_view.dart';
// import 'package:core_utility/core_dashboard_module/view/manage_sip/core_pause_sip_temp_view.dart';
// import 'package:core_utility/core_dashboard_module/view/manage_sip/core_pause_sip_view.dart';
// import 'package:core_utility/core_dashboard_module/view/manage_sip/core_sip_detail_temp_view.dart';
// import 'package:core_utility/core_dashboard_module/view/manage_sip/core_sip_detail_view.dart';
// import 'package:core_utility/core_dashboard_module/view/manage_sip/core_sip_modification_temp_view.dart';
// import 'package:core_utility/core_dashboard_module/view/manage_sip/core_sip_modification_view.dart';
// import 'package:core_utility/core_dashboard_module/view/manage_sip/core_step_up_sip_view.dart';
// import 'package:core_utility/core_dashboard_module/view/manage_sip/core_step_up_temp_view.dart';
// import 'package:core_utility/core_dashboard_module/view/orders/core_all_order_detail_temp_view.dart';
// import 'package:core_utility/core_dashboard_module/view/orders/core_all_order_detail_view.dart';
// import 'package:core_utility/core_dashboard_module/view/orders/core_bulk_pay_order_view.dart';
// import 'package:core_utility/core_dashboard_module/view/orders/core_order_view.dart';
// import 'package:core_utility/core_dashboard_module/view/reports/core_account_statement_view.dart';
// import 'package:core_utility/core_dashboard_module/view/reports/core_capital_gain_report_scheme_detail_view.dart';
// import 'package:core_utility/core_dashboard_module/view/reports/core_capital_gain_report_view.dart';
// import 'package:core_utility/core_dashboard_module/view/reports/core_elss_report_view.dart';
// import 'package:core_utility/core_dashboard_module/view/stp/core_stp_detail_temp_view.dart';
// import 'package:core_utility/core_dashboard_module/view/stp/core_stp_detail_view.dart';
// import 'package:core_utility/core_dashboard_module/view/swp/core_swp_detail_temp_view.dart';
// import 'package:core_utility/core_dashboard_module/view/swp/core_swp_detail_view.dart';
// import 'package:core_utility/core_dashboard_module/view/transaction/core_transaction_detail_temp_view.dart';
// import 'package:core_utility/core_dashboard_module/view/transaction/core_transaction_detail_view.dart';
// import 'package:core_utility/core_dashboard_module/view/transaction/core_transaction_select_view.dart';
// import 'package:core_utility/core_explore.dart';
// import 'package:core_utility/core_explore_module/view/compare_funds/core_compare_funds_view.dart';
// import 'package:core_utility/core_explore_module/view/explore/core_asset_diversification_view.dart';
// import 'package:core_utility/core_explore_module/view/explore/core_asset_top_fund.dart';
// import 'package:core_utility/core_explore_module/view/explore/core_mf_screener_view.dart';
// import 'package:core_utility/core_explore_module/view/explore_v2/core_heat_map_view.dart';
// import 'package:core_utility/core_explore_module/view/explore_v2/core_popular_and_trending_funds_view.dart';
// import 'package:core_utility/core_explore_module/view/explore_v2/core_tools_and_calculator_v2_view.dart';
// import 'package:core_utility/core_explore_module/view/freedom_sip/core_freedom_sip_accumulation_question.dart';
// import 'package:core_utility/core_explore_module/view/freedom_sip/core_freedom_sip_distribution_question.dart';
// import 'package:core_utility/core_explore_module/view/freedom_sip/core_freedom_sip_feature_view.dart';
// import 'package:core_utility/core_explore_module/view/freedom_sip/core_freedom_sip_home_view.dart';
// import 'package:core_utility/core_explore_module/view/freedom_sip/core_freedom_sip_loader_view.dart';
// import 'package:core_utility/core_explore_module/view/freedom_sip/core_freedom_sip_summary_view.dart';
// import 'package:core_utility/core_explore_module/view/investing_profile/core_investing_profile_recommendation_view.dart';
// import 'package:core_utility/core_explore_module/view/listers/core_amc_lister_detail_view.dart';
// import 'package:core_utility/core_explore_module/view/listers/core_amc_lister_view.dart';
// import 'package:core_utility/core_explore_module/view/listers/core_category_lister_view.dart';
// import 'package:core_utility/core_explore_module/view/listers/core_expert_category_lister_view.dart';
// import 'package:core_utility/core_explore_module/view/listers/core_expert_tab_lister_view.dart';
// import 'package:core_utility/core_explore_module/view/listers/core_manager_lister_view.dart';
// import 'package:core_utility/core_explore_module/view/listers/core_temp_amc_lister_view.dart';
// import 'package:core_utility/core_explore_module/view/listers/core_temp_category_lister_view.dart';
// import 'package:core_utility/core_explore_module/view/listers/core_temp_expert_category_lister_view.dart';
// import 'package:core_utility/core_explore_module/view/listers/core_temp_expert_tab_lister_view.dart';
// import 'package:core_utility/core_explore_module/view/mysip_exclusive/portfolio/core_portfolio_detail_view.dart';
// import 'package:core_utility/core_explore_module/view/mysip_exclusive/portfolio/core_portfolio_list_view.dart';
// import 'package:core_utility/core_explore_module/view/mysip_exclusive/pro_services_feature_view.dart';
// import 'package:core_utility/core_explore_module/view/mysip_exclusive/pro_services_landing_view.dart';
// import 'package:core_utility/core_explore_module/view/mysip_exclusive/pro_sip_options_view.dart';
// import 'package:core_utility/core_explore_module/view/nfo/core_nfo_lister_view.dart';
// import 'package:core_utility/core_explore_module/view/nfo/core_nfo_scheme_view.dart';
// import 'package:core_utility/core_explore_module/view/mysip_exclusive/recommendation/core_recommended_category_view.dart';
// import 'package:core_utility/core_explore_module/view/mysip_exclusive/recommendation/core_recommended_category_funds_view.dart';
// import 'package:core_utility/core_explore_module/view/nfo/core_temp_nfo_lister_view.dart';
// import 'package:core_utility/core_explore_module/view/nfo/core_temp_nfo_scheme_view.dart';
// import 'package:core_utility/core_explore_module/view/research_lister/research_lister_main_view.dart';
// import 'package:core_utility/core_explore_module/view/scheme_detail/core_scheme_detail_view.dart';
// import 'package:core_utility/core_explore_module/view/search/core_search_page_temp_view.dart';
// import 'package:core_utility/core_explore_module/view/start_sip/core_start_sip_analyst_suggestion.dart';
// import 'package:core_utility/core_explore_module/view/start_sip/core_start_sip_feature_view.dart';
// import 'package:core_utility/core_explore_module/view/start_sip/core_start_sip_risk_profile_view.dart';
// import 'package:core_utility/core_explore_module/view/start_sip/core_start_sip_scheme_suggestion_view.dart';
// import 'package:core_utility/core_home_module/view/core_onboard_view.dart';
// import 'package:core_utility/core_home_module/view/core_portfolio_checker.dart';
// import 'package:core_utility/core_loan_module/view/core_loan_detail_view.dart';
// import 'package:core_utility/core_loan_module/view/core_loan_feature_view.dart';
// import 'package:core_utility/core_home_module/view/core_invest_options_view.dart';
// import 'package:core_utility/core_learning_module/view/core_news_and_blogs_view.dart';
// import 'package:core_utility/core_learning_module/view/core_videos_view.dart';
// import 'package:core_utility/core_loan_module/view/core_loan_list_view.dart';
// import 'package:core_utility/core_marketing_module/view/core_story_view.dart';
// import 'package:core_utility/core_order_module/view/core_cart_view.dart';
// import 'package:core_utility/core_order_module/view/core_client_sell_nourishment_view.dart';
// import 'package:core_utility/core_order_module/view/core_otp_view.dart';
// import 'package:core_utility/core_order_module/view/core_payement_select_view.dart';
// import 'package:core_utility/core_order_module/view/core_reddem_temp_view.dart';
// import 'package:core_utility/core_order_module/view/core_scheme_select_temp_view.dart';
// import 'package:core_utility/core_order_module/view/core_stp_order_temp_view.dart';
// import 'package:core_utility/core_order_module/view/core_switch_order_temp_view.dart';
// import 'package:core_utility/core_order_module/view/core_swp_order_temp_view.dart';
// import 'package:core_utility/core_order_module/view/portfolio/core_portfolio_additional_purchase_view.dart';
// import 'package:core_utility/core_order_module/view/portfolio/core_portfolio_order_view.dart';
// import 'package:core_utility/core_order_module/view/core_portfolio_top_up_view.dart';
// import 'package:core_utility/core_order_module/view/core_redeem_view.dart';
// import 'package:core_utility/core_order_module/view/core_scheme_select_view.dart';
// import 'package:core_utility/core_order_module/view/core_single_buy_view.dart';
// import 'package:core_utility/core_order_module/view/core_stp_order_view.dart';
// import 'package:core_utility/core_order_module/view/core_switch_view.dart';
// import 'package:core_utility/core_order_module/view/core_swp_order_view.dart';
// import 'package:core_utility/core_order_module/view/core_upi_payment_check_view.dart';
// import 'package:core_utility/core_portfolio_dashboard_module/view/core_portfolio_dashboard_view.dart';
// import 'package:core_utility/core_portfolio_dashboard_module/view/order/portfolio_order_detail_view.dart';
// import 'package:core_utility/core_profile_module/components/profile_fear_mobbin.dart';
// import 'package:core_utility/core_profile_module/model/core_bank_search_model.dart';
// import 'package:core_utility/core_profile_module/model/core_branch_search_model.dart';
// import 'package:core_utility/core_profile_module/view/bank/core_auto_fetch_bank_add_view.dart';
// import 'package:core_utility/core_profile_module/view/bank/core_bank_add_view.dart';
// import 'package:core_utility/core_profile_module/view/bank/core_bank_search_view.dart';
// import 'package:core_utility/core_profile_module/view/bank/core_banks_detail_view.dart';
// import 'package:core_utility/core_profile_module/view/bank/core_branch_search_view.dart';
// import 'package:core_utility/core_profile_module/view/core_profile_view.dart';
// import 'package:core_utility/core_profile_module/view/document/core_document_enter_view.dart';
// import 'package:core_utility/core_profile_module/view/document/core_documents_view.dart';
// import 'package:core_utility/core_profile_module/view/document/core_enter_signature_view.dart';
// import 'package:core_utility/core_profile_module/view/kyc/core_kyc_detail_view.dart';
// import 'package:core_utility/core_profile_module/view/kyc/core_kyc_enter_detail_view.dart';
// import 'package:core_utility/core_profile_module/view/nominee/core_enter_nominee_detail_view.dart';
// import 'package:core_utility/core_profile_module/view/nominee/core_nominee_detail_view.dart';
// import 'package:core_utility/core_profile_module/view/personal_detail/core_enter_initial_details_view.dart';
// import 'package:core_utility/core_profile_module/view/personal_detail/core_enter_personal_detail_view.dart';
// import 'package:core_utility/core_profile_module/view/personal_detail/core_personal_detail_view.dart';
// import 'package:core_utility/core_scheme_module/model/core_scheme_page_detail_modal.dart';
// import 'package:core_utility/core_scheme_module/view/core_scheme_page_detail_view.dart';
// import 'package:core_utility/core_services/core_internet_check_service.dart';
// import 'package:core_utility/core_support_module/view/core_assessment_intro_view.dart';
// import 'package:core_utility/core_support_module/view/core_client_assessment_chat_view.dart';
// import 'package:core_utility/core_support_module/view/core_app_feedback_view.dart';
// import 'package:core_utility/core_support_module/view/core_client_assessment_result.dart';
// import 'package:core_utility/core_support_module/view/core_web_view.dart';
// import 'package:core_utility/core_support_module/view/notification/core_notification_v2_view.dart';
// import 'package:core_utility/core_support_module/view/notification/core_notification_view.dart';
// import 'package:core_utility/core_support_module/view/nourishment/portfolio_suggestion_view.dart';
// import 'package:core_utility/core_support_module/view/ticket/core_faq_view.dart';
// import 'package:core_utility/core_support_module/view/ticket/core_support_view.dart';
// import 'package:core_utility/core_support_module/view/ticket/core_ticket_chat_view.dart';
// import 'package:core_utility/core_support_module/view/ticket/core_ticket_create_view.dart';
// import 'package:core_utility/core_support_module/view/ticket_v2/core_faq_v2_view.dart';
// import 'package:core_utility/core_support_module/view/ticket_v2/core_stop_sip_ticket_create_view.dart';
// import 'package:core_utility/core_support_module/view/ticket_v2/core_support_v2_view.dart';
// import 'package:core_utility/core_support_module/view/ticket_v2/core_ticket_chat_v2_view.dart';
// import 'package:core_utility/core_support_module/view/ticket_v2/core_ticket_create_v2_view.dart';
// import 'package:core_utility/core_support_module/view/ticket_v2/core_ticket_issue_type_select_view.dart';
// import 'package:core_utility/core_support_module/view/ticket_v2/core_tickets_list_v2_view.dart';
// import 'package:core_utility/core_support_module/view/watchlist/core_watchlist_edit_view.dart';
// import 'package:core_utility/core_support_module/view/watchlist/core_watchlist_view.dart';
// import 'package:core_utility/dio/core_prefs.dart';
// import 'package:core_utility/navigation/core_route_paths.dart';
// import 'package:core_utility/theme/core_design_system.dart';
// import 'package:flutter/material.dart';

// Route<dynamic> coreRouteGenerator(RouteSettings settings) {
//   dynamic args = settings.arguments;

//   switch (settings.name) {
//     // ------------------------------------------- AUTH -----------------------------------------------

//     case CoreRoutePaths.onboarding:
//       return MaterialPageRoute(
//         builder: (_) => const CoreOnboardingView(),
//         settings: const RouteSettings(name: CoreRoutePaths.onboarding),
//       );
//     case CoreRoutePaths.signIn:
//       final arguments = args as Map<String, dynamic>?;
//       final route = arguments?['route'] as String? ?? getNavigateTo();
//       return MaterialPageRoute(
//         builder: (_) => CoreSignInView(route: route),
//         settings: RouteSettings(name: CoreRoutePaths.signIn, arguments: arguments),
//       );

//     case CoreRoutePaths.signUp:
//       final arguments = args as Map<String, dynamic>?;
//       final route = arguments?['route'] as String? ?? getNavigateTo(signUp: true);
//       return MaterialPageRoute(
//         builder: (_) => CoreSignUpView(navigateTo: route),
//         settings: RouteSettings(name: CoreRoutePaths.signUp, arguments: arguments),
//       );
//     case CoreRoutePaths.localAuth:
//       return MaterialPageRoute(
//         builder: (_) => const CoreLocalAuthView(),
//         settings: const RouteSettings(name: CoreRoutePaths.localAuth),
//       );

//     case CoreRoutePaths.passwordReset:
//       final arguments = args as Map<String, dynamic>?;
//       final route = arguments?['route'] as String? ?? getNavigateTo();
//       final otp = arguments?['otp'] as String;

//       return MaterialPageRoute(
//         builder: (_) => CorePasswordResetView(
//           navigateTo: route,
//           otp: otp,
//         ),
//         settings: RouteSettings(name: CoreRoutePaths.passwordReset, arguments: arguments),
//       );

//     case CoreRoutePaths.serverMaintenance:
//       return MaterialPageRoute(
//         builder: (_) => const CoreGlobalMaintenanceBreakView(),
//         settings: const RouteSettings(name: CoreRoutePaths.serverMaintenance),
//       );

//     case CoreRoutePaths.watchlist:
//       return MaterialPageRoute(
//         builder: (_) => const CoreWatchlistView(),
//         settings: const RouteSettings(name: CoreRoutePaths.watchlist),
//       );

//     case CoreRoutePaths.watchlistEdit:
//       final arguments = args as Map<String, dynamic>?;
//       final watchlistId = arguments?['watchlist_id'] as num?;
//       return MaterialPageRoute(
//         builder: (_) => CoreWatchlistEditView(
//           watchlistId: watchlistId,
//         ),
//         settings: const RouteSettings(name: CoreRoutePaths.watchlistEdit),
//       );

//     case CoreRoutePaths.otp:
//       final arguments = args as Map<String, dynamic>?;
//       final orderNo = arguments?['orderNo'] as String?;
//       final orderType = arguments?['orderType'] as String;
//       final amount = arguments?['amount'] as String?;
//       final goalOrderNo = arguments?['goalOrderNo'] as String? ?? '';
//       return MaterialPageRoute(
//         builder: (_) => CoreOTPView(
//           orderNo: orderNo ?? '',
//           orderType: orderType,
//           goalOrderNo: goalOrderNo,
//           amount: amount,
//         ),
//         settings: RouteSettings(name: CoreRoutePaths.otp, arguments: arguments),
//       );

//     case CoreRoutePaths.noInternet:
//       return MaterialPageRoute(
//         builder: (_) => const CoreNoInternetView(),
//         settings: const RouteSettings(name: CoreRoutePaths.noInternet),
//       );

//     case CoreRoutePaths.payment:
//       final arguments = args as Map<String, dynamic>?;
//       final onTap = arguments?['onTap'] as Function()?;
//       final orderNo = arguments?['order_no'] as String?;
//       final cartIdForSingleOrder = arguments?['cart_id'] as String?;
//       final amount = arguments?['amount'] as num?;
//       final paymentRequest = arguments?['payment_request'] as bool? ?? false;
//       final isSingleBuySIP = arguments?['is_single_buy_sip'] as bool?;
//       return MaterialPageRoute(
//         builder: (_) => CorePaymentSelectView(
//           onTap: onTap,
//           orderNo: orderNo,
//           cartIdForSingleOrder: cartIdForSingleOrder,
//           amount: amount,
//           paymentRequest: paymentRequest,
//           isSingleBuySIP: isSingleBuySIP,
//         ),
//         settings: RouteSettings(name: CoreRoutePaths.payment, arguments: arguments),
//       );

//     case CoreRoutePaths.paymentCheck:
//       final arguments = args as Map<String, dynamic>?;
//       final orderNo = arguments?['order_no'] as String?;
//       final amount = arguments?['amount'] as num?;
//       final upiId = arguments?['upi_id'] as String?;
//       return MaterialPageRoute(
//         builder: (_) => CoreUPIPaymentCheckView(amount: '$amount', orderNo: orderNo, upiId: upiId),
//         settings: RouteSettings(name: CoreRoutePaths.paymentCheck, arguments: arguments),
//       );

//     case CoreRoutePaths.webView:
//       final arguments = args as Map<String, dynamic>?;
//       final title = arguments?['title'] as String?;
//       final html = arguments?['html'] as String?;
//       final url = arguments?['url'] as String?;
//       return MaterialPageRoute(
//         builder: (_) => CoreWebView(title: title, html: html, url: url),
//         settings: RouteSettings(name: CoreRoutePaths.webView, arguments: arguments),
//       );

//     case CoreRoutePaths.documentOpenView:
//       final arguments = args as Map<String, dynamic>?;
//       final url = arguments?['url'] as String?;
//       final title = arguments?['title'] as String?;
//       return MaterialPageRoute(
//         builder: (_) => CoreDocumentOpenView(title: title, url: url),
//         settings: RouteSettings(name: CoreRoutePaths.documentOpenView, arguments: arguments),
//       );
//     case CoreRoutePaths.investOptions:
//       final arguments = args as Map<String, dynamic>?;
//       return MaterialPageRoute(
//         builder: (_) => const CoreInvestOptionsView(),
//         settings: RouteSettings(name: CoreRoutePaths.investOptions, arguments: arguments),
//       );

//     case CoreRoutePaths.cart:
//       return MaterialPageRoute(
//         builder: (_) => const CoreCartView(),
//         settings: const RouteSettings(name: CoreRoutePaths.cart),
//       );

//     case CoreRoutePaths.notification:
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.alphaUI) {
//             return const CoreNotificationV2View();
//           }
//           return const CoreNotificationView();
//         },
//         settings: const RouteSettings(name: CoreRoutePaths.notification),
//       );

//     case CoreRoutePaths.inProcessBulkOrder:
//       return MaterialPageRoute(
//         builder: (_) => const CoreBulkPayOrderView(),
//         settings: const RouteSettings(name: CoreRoutePaths.inProcessBulkOrder),
//       );

//     case CoreRoutePaths.allOrderDetail:
//       final arguments = args as Map<String, dynamic>?;
//       final order = arguments?['order'] as OrderList?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.alphaUI) {
//             return CoreAllOrderDetailTempView(order: order);
//           }
//           return CoreAllOrderDetailView(order: order);
//         },
//         settings: RouteSettings(name: CoreRoutePaths.allOrderDetail, arguments: arguments),
//       );

//     // ------------------------------ SUPPORT
//     case CoreRoutePaths.seeAllFaqsV2:
//       final arguments = args as Map<String, dynamic>?;
//       final searchQuery = arguments?['search_query'] as String?;
//       return MaterialPageRoute(
//         builder: (_) => CoreFaqV2View(searchQuery: searchQuery),
//         settings: RouteSettings(name: CoreRoutePaths.seeAllFaqsV2, arguments: arguments),
//       );

//     case CoreRoutePaths.support:
//       final arguments = args as Map<String, dynamic>?;
//       final tabIndex = arguments?['tab_index'] as int?;
//       final backButton = arguments?['back_button'] ?? false;

//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.alphaUI) {
//             return CoreSupportV2View(backButton: backButton);
//           }
//           return CoreSupportView(tabIndex: tabIndex);
//         },
//         settings: RouteSettings(name: CoreRoutePaths.support, arguments: arguments),
//       );

//     case CoreRoutePaths.ticketCreate:
//       final arguments = args as Map<String, dynamic>?;
//       final issueType = arguments?['issue_type'] as String?;
//       final issueIcon = arguments?['issue_icon'] as String?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.alphaUI) {
//             return CoreTicketCreateV2View(
//               issueType: issueType,
//               issueIcon: issueIcon,
//             );
//           }

//           return const CoreTicketCreateView();
//         },
//         settings: const RouteSettings(name: CoreRoutePaths.ticketCreate),
//       );

//     case CoreRoutePaths.stopSIPTicketCreate:
//       final arguments = args as Map<String, dynamic>?;
//       final issueType = arguments?['issue_type'] as String?;
//       final issueIcon = arguments?['issue_icon'] as String?;
//       return MaterialPageRoute(
//         builder: (_) {
//           return CoreStopSipTicketCreateView(
//             issueType: issueType,
//             issueIcon: issueIcon,
//           );
//         },
//         settings: const RouteSettings(name: CoreRoutePaths.stopSIPTicketCreate),
//       );

//     case CoreRoutePaths.ticketChat:
//       final arguments = args as Map<String, dynamic>?;
//       final ticketNo = arguments?['ticketNo'] ?? 0;
//       var activeStatus = arguments?['activeStatus'] ?? false;

//       if (activeStatus is String) {
//         activeStatus = true;
//       }
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.alphaUI) {
//             return CoreTicketChatV2View(ticketNo: ticketNo);
//           }
//           return CoreTicketChatView(ticketNo: ticketNo, activeStatus: activeStatus);
//         },
//         settings: RouteSettings(name: CoreRoutePaths.ticketChat, arguments: arguments),
//       );

//     case CoreRoutePaths.seeAllTickets:
//       final arguments = args as Map<String, dynamic>?;
//       return MaterialPageRoute(
//         builder: (_) => const CoreTicketsListV2View(),
//         settings: RouteSettings(name: CoreRoutePaths.seeAllTickets, arguments: arguments),
//       );

//     case CoreRoutePaths.selectIssueTypeV2:
//       final arguments = args as Map<String, dynamic>?;
//       return MaterialPageRoute(
//         builder: (_) => const CoreTicketIssueTypeSelectView(),
//         settings: RouteSettings(name: CoreRoutePaths.selectIssueTypeV2, arguments: arguments),
//       );

//     case CoreRoutePaths.faq:
//       final arguments = args as Map<String, dynamic>?;
//       final faqCategoryID = arguments?['faqCategoryID'] as num?;
//       final faqSearchQuery = arguments?['faqSearchQuery'] as String?;
//       return MaterialPageRoute(
//         builder: (_) => CoreFaqView(
//           faqCategoryID: faqCategoryID,
//           faqSearchQuery: faqSearchQuery,
//         ),
//         settings: RouteSettings(name: CoreRoutePaths.faq, arguments: arguments),
//       );

//     case CoreRoutePaths.coreSearch:
//       return CoreDesignSystem.instance.betaUI
//           ? CoreZoomPageRoute(
//               builder: (_) => const CoreSearchPageTempView(),
//               settings: const RouteSettings(name: CoreRoutePaths.coreSearch),
//             )
//           : MaterialPageRoute(
//               builder: (_) => const CoreSearchPageTempView(),
//               // builder: (_) => const MySIPSearchPage(),
//               settings: const RouteSettings(name: CoreRoutePaths.coreSearch),
//             );

//     case CoreRoutePaths.feedback:
//       return MaterialPageRoute(
//         builder: (_) => const CoreAppFeedbackView(),
//         settings: const RouteSettings(name: CoreRoutePaths.feedback),
//       );
//     case CoreRoutePaths.clientAssessmentInto:
//       return MaterialPageRoute(
//         builder: (_) => const CoreAssessmentIntroView(),
//         settings: const RouteSettings(name: CoreRoutePaths.clientAssessmentInto),
//       );
//     case CoreRoutePaths.portfolioCheckUp:
//       return MaterialPageRoute(
//         builder: (_) => const CorePortfolioCheckerView(),
//         settings: const RouteSettings(name: CoreRoutePaths.portfolioCheckUp),
//       );
//     case CoreRoutePaths.clientAssessment:
//       return MaterialPageRoute(
//         builder: (_) => const CoreClientAssessmentChatView(),
//         settings: const RouteSettings(name: CoreRoutePaths.clientAssessment),
//       );

//     case CoreRoutePaths.clientAssessmentResult:
//       return MaterialPageRoute(
//         builder: (_) => const CoreClientAssessmentResultView(),
//         settings: const RouteSettings(name: CoreRoutePaths.clientAssessmentResult),
//       );
//     case CoreRoutePaths.investingProfileRecommendation:
//       return MaterialPageRoute(
//         builder: (_) => const CoreInvestingProfileRecommendation(),
//         settings: const RouteSettings(name: CoreRoutePaths.investingProfileRecommendation),
//       );

//     // ------------------------------ EXPLORE

//     case CoreRoutePaths.popularAndTrendingFund:
//       return MaterialPageRoute(
//         builder: (_) => const CorePopularAndTrendingFundsView(),
//         settings: const RouteSettings(name: CoreRoutePaths.popularAndTrendingFund),
//       );

//     case CoreRoutePaths.toolsAndCalculator:
//       return MaterialPageRoute(
//         builder: (_) => const CoreToolsAndCalculatorV2View(),
//         settings: const RouteSettings(name: CoreRoutePaths.toolsAndCalculator),
//       );

//     case CoreRoutePaths.schemeDetail:
//       final arguments = args as Map<String, dynamic>?;
//       final amcCode = arguments?['amc_code'] as String? ?? '';
//       final schemeCode = arguments?['scheme_code'] as String? ?? '';
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.alphaUI) {
//             return CoreSchemePageDetailView(schemeCode: schemeCode, amcCode: amcCode);
//           }
//           return CoreSchemeDetailView(amcCode: amcCode, schemeCode: schemeCode);
//         },
//         settings: RouteSettings(name: CoreRoutePaths.schemeDetail, arguments: arguments),
//       );

//     case CoreRoutePaths.explore:
//       return MaterialPageRoute(
//         builder: (_) => const CoreExploreView(),
//         settings: const RouteSettings(name: CoreRoutePaths.explore),
//       );

//     case CoreRoutePaths.heatMap:
//       return MaterialPageRoute(
//         builder: (_) => const CoreHeatMapView(),
//         settings: const RouteSettings(name: CoreRoutePaths.heatMap),
//       );

//     // ----------------------- START SIP

//     case CoreRoutePaths.startSIPFeature:
//       final arguments = args as Map<String, dynamic>?;
//       return MaterialPageRoute(
//         builder: (context) => const CoreStartSIPFeatureView(),
//         settings: RouteSettings(name: CoreRoutePaths.startSIPFeature, arguments: arguments),
//       );

//     case CoreRoutePaths.startSIPRiskProfile:
//       return MaterialPageRoute(
//         builder: (context) {
//           return const CoreStartSIPRiskProfileView();
//         },
//         settings: const RouteSettings(name: CoreRoutePaths.startSIPRiskProfile),
//       );

//     case CoreRoutePaths.startSIPAnalystSuggestion:
//       final arguments = args as Map<String, dynamic>?;
//       final answerList = arguments?['answer_list'] as List<Map>? ?? [];
//       return MaterialPageRoute(
//         builder: (context) => CoreStartSIPAnalystSuggestionView(
//           answerList: answerList,
//         ),
//         settings:
//             RouteSettings(name: CoreRoutePaths.startSIPAnalystSuggestion, arguments: arguments),
//       );

//     case CoreRoutePaths.startSIPSchemeSuggestion:
//       final arguments = args as Map<String, dynamic>;
//       final postData = arguments['postData'] as Map<String, dynamic>;
//       return MaterialPageRoute(
//         builder: (context) => CoreStartSIPSchemeSuggestionView(postData: postData),
//         settings:
//             RouteSettings(name: CoreRoutePaths.startSIPSchemeSuggestion, arguments: arguments),
//       );

//     // ----------------------- FREEDOM  SIP

//     case CoreRoutePaths.freedomSIPFeature:
//       final arguments = args as Map<String, dynamic>?;
//       return CoreCustomDurationPageRoute(
//         durationInMilliseconds: 1000,
//         builder: (context) => const CoreFreedomSIPFeatureView(),
//         settings: RouteSettings(name: CoreRoutePaths.freedomSIPFeature, arguments: arguments),
//       );

//     case CoreRoutePaths.freedomSIPLoader:
//       final arguments = args as Map<String, dynamic>;
//       final step = arguments['step'] as int;
//       return CoreCustomDurationPageRoute(
//         durationInMilliseconds: 1000,
//         builder: (context) => CoreFreedomSIPLoaderView(step: step),
//         settings: RouteSettings(name: CoreRoutePaths.freedomSIPLoader, arguments: arguments),
//       );

//     case CoreRoutePaths.freedomSIPAccumulationQuestion:
//       return CoreCustomDurationPageRoute(
//         durationInMilliseconds: Durations.long2.inMilliseconds,
//         builder: (context) => const CoreFreedomSIPAccumulationQuestion(),
//         settings: const RouteSettings(name: CoreRoutePaths.freedomSIPAccumulationQuestion),
//       );

//     case CoreRoutePaths.freedomSIPDistributionQuestion:
//       return CoreCustomDurationPageRoute(
//         durationInMilliseconds: Durations.long2.inMilliseconds,
//         builder: (context) => const CoreFreedomSIPDistributionQuestion(),
//         settings: const RouteSettings(name: CoreRoutePaths.freedomSIPDistributionQuestion),
//       );

//     case CoreRoutePaths.freedomSIPSummary:
//       return CoreCustomDurationPageRoute(
//         durationInMilliseconds: Durations.long2.inMilliseconds,
//         builder: (context) => const CoreFreedomSIPSummaryView(),
//         settings: const RouteSettings(name: CoreRoutePaths.freedomSIPSummary),
//       );

//     case CoreRoutePaths.proServiceFeature:
//       return MaterialPageRoute(
//         builder: (_) => const ProServicesFeatureView(),
//         settings: const RouteSettings(name: CoreRoutePaths.proServiceFeature),
//       );

//     case CoreRoutePaths.proServices:
//       return MaterialPageRoute(
//         builder: (_) => const ProServicesLandingView(),
//         settings: const RouteSettings(name: CoreRoutePaths.proServices),
//       );

//     case CoreRoutePaths.proSIPOptions:
//       final arguments = args as Map<String, dynamic>?;
//       return MaterialPageRoute(
//         builder: (_) => const ProSipOptionsView(),
//         settings: RouteSettings(name: CoreRoutePaths.proSIPOptions, arguments: arguments),
//       );

//     case CoreRoutePaths.bestRecommendationCategory:
//       final arguments = args as Map<String, dynamic>?;
//       return MaterialPageRoute(
//         builder: (_) => const CoreRecommendedCategoryView(),
//         settings:
//             RouteSettings(name: CoreRoutePaths.bestRecommendationCategory, arguments: arguments),
//       );
//     case CoreRoutePaths.managerLister:
//       final arguments = args as Map<String, dynamic>?;
//       final title = arguments?['title'] as String? ?? 'Manager Detail';
//       final id = arguments?['id'] as num;
//       return MaterialPageRoute(
//         builder: (_) => CoreManagerListerView(title: title, id: id),
//         settings: RouteSettings(name: CoreRoutePaths.managerLister, arguments: arguments),
//       );

//     case CoreRoutePaths.bestRecommendationFunds:
//       final arguments = args as Map<String, dynamic>;
//       final postData = arguments['postData'] as Map<String, dynamic>;
//       final title = arguments['title'] as String? ?? 'Best Fund';
//       return MaterialPageRoute(
//         builder: (_) => CoreRecommendedCategoryFundsView(title: title, postData: postData),
//         settings: RouteSettings(name: CoreRoutePaths.bestRecommendationFunds, arguments: arguments),
//       );

//     // case CoreRoutePaths.bestPortfolio:
//     //   return MaterialPageRoute(
//     //     builder: (_) => const CoreBestPortfolioView(),
//     //     settings: const RouteSettings(name: CoreRoutePaths.bestPortfolio),
//     //     builder: (_) => CorePortfolioDetailView(
//     //       portfolioId: portfolioId,
//     //       invType: invType,
//     //     ),
//     //   );

//     case CoreRoutePaths.assetTopFund:
//       return MaterialPageRoute(
//         builder: (_) => const CoreAssetTopFundView(),
//         settings: const RouteSettings(name: CoreRoutePaths.assetTopFund),
//       );
//     case CoreRoutePaths.amc:
//       return MaterialPageRoute(
//         builder: (_) => const CoreAmcListerDetailView(),
//         settings: const RouteSettings(name: CoreRoutePaths.amc),
//       );

//     case CoreRoutePaths.assetDiversification:
//       final arguments = args as Map<String, dynamic>?;
//       final index = arguments?['index'] as int? ?? 0;
//       return MaterialPageRoute(
//         builder: (_) => CoreAssetDiversificationView(index: index),
//         settings: RouteSettings(name: CoreRoutePaths.assetDiversification, arguments: arguments),
//       );

//     case CoreRoutePaths.mfScreener:
//       final arguments = args as Map<String, dynamic>?;
//       final postData = arguments?['postData'] as Map<String, dynamic>?;
//       return MaterialPageRoute(
//         builder: (_) => CoreMfScreenerView(postData: postData),
//         settings: RouteSettings(name: CoreRoutePaths.mfScreener, arguments: arguments),
//       );

//     case CoreRoutePaths.compareFunds:
//       final arguments = args as Map<String, dynamic>?;
//       final isins = arguments?['isins'] as String?;

//       return MaterialPageRoute(
//         builder: (_) => CoreCompareFundsView(
//           isins: isins,
//         ),
//         settings: RouteSettings(name: CoreRoutePaths.compareFunds, arguments: arguments),
//       );

//     case CoreRoutePaths.researchLister:
//       final arguments = args as Map<String, dynamic>;
//       final postData = arguments['postData'] as Map<String, dynamic>;
//       return MaterialPageRoute(
//         builder: (_) => ResearchListerMainView(
//           postData: postData,
//         ),
//         settings: RouteSettings(name: CoreRoutePaths.researchLister, arguments: arguments),
//       );

//     case CoreRoutePaths.categoryDetail:
//       final arguments = args as Map<String, dynamic>;
//       final postData = arguments['postData'] as Map<String, dynamic>;
//       final title = arguments['title'] as String?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.alphaUI) {
//             return CoreTempCategoryListerView(
//               title: title ?? 'Category Detail',
//               postData: postData,
//             );
//           }
//           return CoreCategoryListerView(
//             title: title ?? 'Category Detail',
//             postData: postData,
//           );
//         },
//         settings: RouteSettings(name: CoreRoutePaths.categoryDetail, arguments: arguments),
//       );

//     case CoreRoutePaths.amcLister:
//       final arguments = args as Map<String, dynamic>;
//       final postData = arguments['postData'] as Map<String, dynamic>;
//       final title = arguments['title'] as String?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.alphaUI) {
//             return CoreTempAmcListerView(
//               title: title ?? 'AMC Detail',
//               postData: postData,
//             );
//           }

//           return CoreAmcListerView(
//             title: title ?? 'AMC Detail',
//             postData: postData,
//           );
//         },
//         settings: RouteSettings(name: CoreRoutePaths.amcLister, arguments: arguments),
//       );

//     case CoreRoutePaths.nfoLister:
//       final arguments = args as Map<String, dynamic>;
//       final postData = arguments['postData'] as Map<String, dynamic>;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.alphaUI) {
//             return CoreTempNFOListerView(postData: postData);
//           }
//           return CoreNFOListerView(postData: postData);
//         },
//         settings: RouteSettings(name: CoreRoutePaths.nfoLister, arguments: arguments),
//       );

//     case CoreRoutePaths.nfoDetail:
//       final arguments = args as Map<String, dynamic>;
//       final amcCode = arguments['amc_code'] as String;
//       final schemeCode = arguments['scheme_code'] as String;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.alphaUI) {
//             return CoreTempNFOSchemeView(
//               amcCode: amcCode,
//               schemeCode: schemeCode,
//             );
//           }
//           return CoreNFOSchemeView(
//             amcCode: amcCode,
//             schemeCode: schemeCode,
//           );
//         },
//         settings: RouteSettings(name: CoreRoutePaths.nfoDetail, arguments: arguments),
//       );

//     case CoreRoutePaths.expertCategoryLister:
//       final arguments = args as Map<String, dynamic>;
//       final postData = arguments['postData'] as Map<String, dynamic>;
//       final title = arguments['title'] as String?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.alphaUI) {
//             return CoreTempExpertCategoryListerView(
//               title: title ?? 'Expert Category',
//               postData: postData,
//             );
//           }

//           return CoreExpertCategoryListerView(
//             title: title ?? 'Expert Category',
//             investmentIdea: false,
//             postData: postData,
//           );
//         },
//         settings: RouteSettings(name: CoreRoutePaths.expertCategoryLister, arguments: arguments),
//       );

//     case CoreRoutePaths.expertTabLister:
//       final arguments = args as Map<String, dynamic>;
//       final postData = arguments['postData'] as Map<String, dynamic>;
//       final title = arguments['title'] as String?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.alphaUI) {
//             return CoreTempExpertTabListerView(
//               title: title ?? 'Expert Category',
//               postData: postData,
//             );
//           }

//           return CoreExpertTabListerView(
//             title: title ?? 'Expert Category',
//             postData: postData,
//           );
//         },
//         settings: RouteSettings(name: CoreRoutePaths.expertTabLister, arguments: arguments),
//       );

//     // ------------------------------ DASHBOARD

//     case CoreRoutePaths.dashboard:
//       return MaterialPageRoute(
//         builder: (_) => const CoreDashboardView(),
//         settings: const RouteSettings(name: CoreRoutePaths.dashboard),
//       );

//     case CoreRoutePaths.order:
//       return MaterialPageRoute(
//         builder: (_) => const CoreOrderView(),
//         settings: const RouteSettings(name: CoreRoutePaths.order),
//       );

//     case CoreRoutePaths.portfolioAdditionalPurchase:
//       final arguments = args as Map<String, dynamic>?;
//       final goalId = arguments?['goal_id'] as num;
//       final goalOrderNo = arguments?['goal_order_no'] as num;
//       return MaterialPageRoute(
//         builder: (context) => CorePortfolioAdditionalPurchaseView(
//           goalId: goalId,
//           goalOrderNo: goalOrderNo,
//         ),
//       );

//     case CoreRoutePaths.transactionSelect:
//       final arguments = args as Map<String, dynamic>;
//       final title = arguments['title'] as String?;
//       final onTransactionSelect = arguments['on_transaction_select'] as TransactionSelectCallback?;
//       return MaterialPageRoute(
//         builder: (_) => CoreTransactionSelectView(
//           title: title,
//           onTransactionSelect: onTransactionSelect,
//         ),
//         settings: RouteSettings(name: CoreRoutePaths.transactionSelect, arguments: arguments),
//       );
//     case CoreRoutePaths.transactionDetail:
//       final arguments = args as Map<String, dynamic>;
//       final transaction = arguments['transaction'] as TransactionDetail?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.betaUI) {
//             return CoreTransactionDetailTempView(transaction: transaction);
//           }

//           return CoreTransactionDetailView(
//             transaction: transaction,
//           );
//         },
//         settings: RouteSettings(name: CoreRoutePaths.transactionDetail, arguments: arguments),
//       );

//     case CoreRoutePaths.sipDetail:
//       final arguments = args as Map<String, dynamic>;
//       final schemeCode = arguments['scheme_code'] as String?;
//       final sipRegNo = arguments['sip_reg_no'] as String?;
//       final expire = arguments['expire'] as int?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.alphaUI) {
//             return CoreSipDetailTempView(
//               expire: expire,
//               schemeCode: schemeCode,
//               sipRegNo: sipRegNo,
//             );
//           }
//           return CoreSIPDetailView(
//             expire: expire,
//             schemeCode: schemeCode,
//             sipRegNo: sipRegNo,
//           );
//         },
//         settings: RouteSettings(name: CoreRoutePaths.sipDetail, arguments: arguments),
//       );

//     case CoreRoutePaths.freedomSIPDetail:
//       final arguments = args as Map<String, dynamic>;
//       final freedomId = arguments['freedom_id'] as num;

//       return MaterialPageRoute(
//         builder: (_) => CoreFreedomSIPDetailView(
//           freedomId: freedomId,
//         ),
//         settings: RouteSettings(name: CoreRoutePaths.freedomSIPDetail, arguments: arguments),
//       );

//     case CoreRoutePaths.freedomSIPHome:
//       return MaterialPageRoute(
//         builder: (_) => const CoreFreedomSIPHomeView(),
//         settings: const RouteSettings(name: CoreRoutePaths.freedomSIPHome),
//       );

//     case CoreRoutePaths.stepUpSIP:
//       final Map<String, dynamic> arguments = args as Map<String, dynamic>;
//       final schemeCode = arguments['scheme_code'] as String?;
//       final sipRegNo = arguments['sip_reg_no'] as String?;
//       final expire = arguments['expire'] as int?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.betaUI) {
//             return CoreStepUpTempView(expire: expire, schemeCode: schemeCode, sipRegNo: sipRegNo);
//           }

//           return CoreStepUpSIPView(expire: expire, schemeCode: schemeCode, sipRegNo: sipRegNo);
//         },
//         settings: RouteSettings(name: CoreRoutePaths.stepUpSIP, arguments: arguments),
//       );

//     case CoreRoutePaths.pauseSIP:
//       final Map<String, dynamic> arguments = args as Map<String, dynamic>;
//       final schemeCode = arguments['scheme_code'] as String?;
//       final sipRegNo = arguments['sip_reg_no'] as String?;
//       final expire = arguments['expire'] as int?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.betaUI) {
//             return CorePauseSipTempView(expire: expire, schemeCode: schemeCode, sipRegNo: sipRegNo);
//           }

//           return CorePauseSIPView(expire: expire, schemeCode: schemeCode, sipRegNo: sipRegNo);
//         },
//         settings: RouteSettings(name: CoreRoutePaths.pauseSIP, arguments: arguments),
//       );

//     case CoreRoutePaths.modificationSIP:
//       final Map<String, dynamic> arguments = args as Map<String, dynamic>;
//       final schemeCode = arguments['scheme_code'] as String?;
//       final sipRegNo = arguments['sip_reg_no'] as String?;
//       final expire = arguments['expire'] as int?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.betaUI) {
//             return CoreSipModificationTempView(
//               expire: expire,
//               schemeCode: schemeCode,
//               sipRegNo: sipRegNo,
//             );
//           }

//           return CoreSIPModificationView(
//             expire: expire,
//             schemeCode: schemeCode,
//             sipRegNo: sipRegNo,
//           );
//         },
//         settings: RouteSettings(name: CoreRoutePaths.modificationSIP, arguments: arguments),
//       );

//     case CoreRoutePaths.topUp:
//       return MaterialPageRoute(
//         builder: (_) => const CorePortfolioTopUpView(),
//         settings: const RouteSettings(name: CoreRoutePaths.topUp),
//       );

//     case CoreRoutePaths.singleBuy:
//       final arguments = args as Map<String, dynamic>;
//       final schemeCode = arguments['scheme_code'] as String?;
//       final amount = arguments['amount'] as num?;
//       final sipDate = arguments['sip_date'] as String?;
//       final folioNo = arguments['folio_no'] as String?;
//       final isSIP = arguments['is_sip'] as bool? ?? true;
//       final additionalPurchase = arguments['additional_purchase'] as int? ?? 0;
//       final source = arguments['source'] as String?;
//       return MaterialPageRoute(
//         builder: (_) => CoreSingleBuyView(
//           schemeCode: schemeCode,
//           folioNo: folioNo,
//           isSIP: isSIP,
//           amount: amount,
//           sipDate: sipDate,
//           additionalPurchase: additionalPurchase,
//           source: source,
//         ),
//         settings: RouteSettings(name: CoreRoutePaths.singleBuy, arguments: arguments),
//       );

//     case CoreRoutePaths.redeem:
//       final arguments = args as Map<String, dynamic>;
//       final transaction = arguments['transaction'] as TransactionDetail?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.betaUI) {
//             return CoreReddemTempView(transaction: transaction);
//           }
//           return CoreRedeemView(
//             transaction: transaction,
//           );
//         },
//         settings: RouteSettings(name: CoreRoutePaths.redeem, arguments: arguments),
//       );

//     case CoreRoutePaths.redeemNourishment:
//       final arguments = args as Map<String, dynamic>;
//       final onReddem = arguments['on_reddem'] as Function(String);
//       return MaterialPageRoute(
//         builder: (_) => CoreClientSellNourishmentView(onReddem: onReddem),
//         settings: RouteSettings(name: CoreRoutePaths.redeemNourishment, arguments: arguments),
//       );

//     case CoreRoutePaths.stpOrder:
//       final arguments = args as Map<String, dynamic>;
//       final transaction = arguments['transaction'] as TransactionDetail?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.betaUI) {
//             return CoreStpOrderTempView(transaction: transaction);
//           }

//           return CoreSTPOrderView(transaction: transaction);
//         },
//         settings: RouteSettings(name: CoreRoutePaths.stpOrder, arguments: arguments),
//       );

//     case CoreRoutePaths.stpDetail:
//       final arguments = args as Map<String, dynamic>;
//       final stpRegNo = arguments['stp_reg_no'] as String?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.alphaUI) {
//             return CoreStpDetailTempView(stpRegNo: stpRegNo);
//           }
//           return CoreSTPDetailView(stpRegNo: stpRegNo);
//         },
//         settings: RouteSettings(name: CoreRoutePaths.stpDetail, arguments: arguments),
//       );

//     case CoreRoutePaths.switchScheme:
//       final arguments = args as Map<String, dynamic>;
//       final transaction = arguments['transaction'] as TransactionDetail?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.betaUI) {
//             return CoreSwitchOrderTempView(transaction: transaction);
//           }

//           return CoreSwitchView(transaction: transaction);
//         },
//         settings: RouteSettings(name: CoreRoutePaths.switchScheme, arguments: arguments),
//       );

//     case CoreRoutePaths.swpOrder:
//       final arguments = args as Map<String, dynamic>;
//       final transaction = arguments['transaction'] as TransactionDetail?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.betaUI) {
//             return CoreSWPOrderTempView(transaction: transaction);
//           }

//           return CoreSWPOrderView(transaction: transaction);
//         },
//         settings: RouteSettings(name: CoreRoutePaths.swpOrder, arguments: arguments),
//       );

//     case CoreRoutePaths.swpDetail:
//       final arguments = args as Map<String, dynamic>;
//       final swpNo = arguments['swp_no'] as num?;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.alphaUI) {
//             return CoreSwpDetailTempView(
//               swpNo: swpNo,
//             );
//           }
//           return CoreSWPDetailView(swpNo: swpNo);
//         },
//         settings: RouteSettings(name: CoreRoutePaths.swpDetail, arguments: arguments),
//       );
//     case CoreRoutePaths.schemeSelect:
//       final arguments = args as Map<String, dynamic>?;
//       final title = arguments?['title'] as String?;
//       final filter = arguments?['filter'] as Map<String, dynamic>?;
//       final onSelect = arguments?['on_select'] as SchemeSelectCallback?;
//       final showFilter = arguments?['show_filter'] as bool? ?? false;
//       return MaterialPageRoute(
//         builder: (_) {
//           if (CoreDesignSystem.instance.alphaUI) {
//             return CoreSchemeSelectTempView(
//               title: title,
//               filter: filter,
//               onSelect: onSelect,
//               showFilter: showFilter,
//             );
//           }
//           return CoreSchemeSelectView(
//             title: title,
//             filter: filter,
//             onSelect: onSelect,
//             showFilter: showFilter,
//           );
//         },
//         settings: RouteSettings(name: CoreRoutePaths.schemeSelect, arguments: arguments),
//       );

//     case CoreRoutePaths.elssReport:
//       final arguments = args as Map<String, dynamic>?;
//       final startDate = arguments?['start_date'] as DateTime;
//       final endDate = arguments?['end_date'] as DateTime;
//       final reportTitle = arguments?['report_title'] as String?;
//       return MaterialPageRoute(
//         builder: (_) => CoreELSSReportView(
//           startDate: startDate,
//           endDate: endDate,
//           reportTitle: reportTitle,
//         ),
//         settings: RouteSettings(name: CoreRoutePaths.elssReport, arguments: arguments),
//       );

//     case CoreRoutePaths.accountStatementReport:
//       final arguments = args as Map<String, dynamic>?;
//       final startDate = arguments?['start_date'] as DateTime;
//       final endDate = arguments?['end_date'] as DateTime;
//       return MaterialPageRoute(
//         builder: (_) => CoreAccountStatementView(
//           startDate: startDate,
//           endDate: endDate,
//         ),
//         settings: RouteSettings(name: CoreRoutePaths.accountStatementReport, arguments: arguments),
//       );

//     case CoreRoutePaths.capitalGainReport:
//       final arguments = args as Map<String, dynamic>?;
//       final startDate = arguments?['start_date'] as DateTime;
//       final endDate = arguments?['end_date'] as DateTime;
//       return MaterialPageRoute(
//         builder: (_) => CoreCapitalGainReportView(
//           startDate: startDate,
//           endDate: endDate,
//         ),
//         settings: RouteSettings(name: CoreRoutePaths.capitalGainReport, arguments: arguments),
//       );

//     case CoreRoutePaths.capitalGainReportSchemeDetail:
//       final arguments = args as Map<String, dynamic>;
//       final transaction = arguments['transaction'] as TransactionDetail?;
//       return MaterialPageRoute(
//         builder: (_) => CoreCapitalGainReportSchemeDetailView(
//           transaction: transaction,
//         ),
//         settings:
//             RouteSettings(name: CoreRoutePaths.capitalGainReportSchemeDetail, arguments: arguments),
//       );

//     // ------------------------------ PROFILE

//     case CoreRoutePaths.enterInitialDetails:
//       return MaterialPageRoute(
//         builder: (_) => const CoreEnterInitialDetailsView(),
//         settings: const RouteSettings(name: CoreRoutePaths.enterInitialDetails),
//       );
//     case CoreRoutePaths.assetHolding:
//       final arguments = args as Map<String, dynamic>?;
//       final index = arguments?['index'] as int;
//       return MaterialPageRoute(
//         builder: (_) => CoreAssetsHoldingView(
//           index: index,
//         ),
//         settings: const RouteSettings(name: CoreRoutePaths.assetHolding),
//       );
//     case CoreRoutePaths.enterKYC:
//       final arguments = args as Map<String, dynamic>?;
//       final addFamilyMember = arguments?['add_family_member'] as bool? ?? false;
//       return MaterialPageRoute(
//         builder: (_) => CoreKycEnterDetailView(isAddFamilyMember: addFamilyMember),
//         settings: RouteSettings(name: CoreRoutePaths.enterKYC, arguments: arguments),
//       );

//     case CoreRoutePaths.kycDetail:
//       return MaterialPageRoute(
//         builder: (_) => const CoreKycDetailView(),
//         settings: const RouteSettings(name: CoreRoutePaths.kycDetail),
//       );

//     case CoreRoutePaths.profile:
//       return CoreFadePageRoute(
//         builder: (_) => const CoreProfileView(),
//         durationInMilliseconds: Durations.medium4.inMilliseconds,
//         settings: const RouteSettings(name: CoreRoutePaths.profile),
//       );

//     case CoreRoutePaths.personalDetail:
//       return MaterialPageRoute(
//         builder: (_) => const CorePersonalDetailView(),
//         settings: const RouteSettings(name: CoreRoutePaths.personalDetail),
//       );

//     case CoreRoutePaths.enterPersonalDetail:
//       return MaterialPageRoute(
//         builder: (_) => const CoreEnterPersonalDetailView(),
//         settings: const RouteSettings(name: CoreRoutePaths.enterPersonalDetail),
//       );

//     case CoreRoutePaths.profileFearMobbin:
//       return MaterialPageRoute(
//         builder: (_) => const ProfileFearMobbin(),
//         settings: const RouteSettings(name: CoreRoutePaths.profileFearMobbin),
//       );

//     // ------------------------------ NOMINEE

//     case CoreRoutePaths.nomineeDetail:
//       return MaterialPageRoute(
//         builder: (_) => const CoreNomineeDetailView(),
//         settings: const RouteSettings(name: CoreRoutePaths.nomineeDetail),
//       );

//     case CoreRoutePaths.enterNomineeDetail:
//       final arguments = args as Map<String, dynamic>?;
//       final updateNominee = arguments?['update_nominee'];
//       return MaterialPageRoute(
//         builder: (_) => CoreEnterNomineeDetailView(updateNomine: updateNominee),
//         settings: RouteSettings(name: CoreRoutePaths.enterNomineeDetail, arguments: arguments),
//       );

//     // ------------------------------ BANK

//     case CoreRoutePaths.bankSearch:
//       return MaterialPageRoute(
//         builder: (_) => const CoreBankSearchView(),
//         settings: const RouteSettings(name: CoreRoutePaths.bankSearch),
//       );
//     //
//     case CoreRoutePaths.branchSearch:
//       final arguments = args as Map<String, dynamic>;
//       final bankDetail = BankDetail.fromJson(arguments);
//       return MaterialPageRoute(
//         builder: (_) => CoreBranchSearchView(bankDetail: bankDetail),
//         settings: RouteSettings(name: CoreRoutePaths.branchSearch, arguments: arguments),
//       );

//     case CoreRoutePaths.addBank:
//       final arguments = args as Map<String, dynamic>;
//       final bankDetail = BankDetail.fromJson(arguments['bank']);
//       final branchDetail = Branch.fromJson(arguments['branch']);
//       return MaterialPageRoute(
//         builder: (_) => CoreBankAddView(
//           branchDetail: branchDetail,
//           bankDetail: bankDetail,
//         ),
//         settings: RouteSettings(name: CoreRoutePaths.addBank, arguments: arguments),
//       );

//     case CoreRoutePaths.banksDetail:
//       return MaterialPageRoute(
//         builder: (_) => const CoreBanksDetailView(),
//         settings: const RouteSettings(name: CoreRoutePaths.banksDetail),
//       );
//     case CoreRoutePaths.autoFetchBankAdd:
//       return MaterialPageRoute(
//         builder: (_) => const CoreAutoFetchBankAddView(),
//         settings: const RouteSettings(name: CoreRoutePaths.autoFetchBankAdd),
//       );

//     case CoreRoutePaths.documents:
//       return MaterialPageRoute(
//         builder: (_) => const CoreDocumentsView(),
//         settings: const RouteSettings(name: CoreRoutePaths.documents),
//       );

//     case CoreRoutePaths.enterDocuments:
//       return MaterialPageRoute(
//         builder: (_) => const CoreEnterDocumentsView(),
//         settings: const RouteSettings(name: CoreRoutePaths.enterDocuments),
//       );

//     case CoreRoutePaths.signatureUpload:
//       final arguments = args as Map<String, dynamic>;
//       final docCode = arguments['doc_code'];
//       return MaterialPageRoute(
//         builder: (_) => CoreEnterSignatureView(docCode: docCode),
//         settings: RouteSettings(name: CoreRoutePaths.signatureUpload, arguments: arguments),
//       );

//     case CoreRoutePaths.portfolioSuggestion:
//       return MaterialPageRoute(
//         builder: (_) => const PortfolioSuggestionView(),
//         settings: const RouteSettings(name: CoreRoutePaths.portfolioSuggestion),
//       );

//     case CoreRoutePaths.story:
//       return MaterialPageRoute(
//         builder: (_) => const CoreStoryView(),
//         settings: const RouteSettings(name: CoreRoutePaths.story),
//       );

//     case CoreRoutePaths.portfolioDashboard:
//       final arguments = args as Map<String, dynamic>?;
//       final goalId = arguments?['goal_id'] as num;
//       final goalOrderNo = arguments?['goal_order_no'] as num;
//       return MaterialPageRoute(
//         builder: (_) => CorePortfolioDashboardView(goalId: goalId, goalOrderNo: goalOrderNo),
//       );

//     case CoreRoutePaths.portfolioOrderDetail:
//       final arguments = args as Map<String, dynamic>?;
//       final orderNo = arguments?['order_no'] as String;
//       final orderType = arguments?['order_type'] as String;
//       return MaterialPageRoute(
//         builder: (_) => CorePortfolioOrderDetailView(
//           orderNo: orderNo,
//           orderType: orderType,
//         ),
//         settings: RouteSettings(name: CoreRoutePaths.portfolioOrderDetail, arguments: arguments),
//       );

//     case CoreRoutePaths.portfolioList:
//       final arguments = args as Map<String, dynamic>?;
//       return MaterialPageRoute(
//         builder: (_) => const CorePortfolioListView(),
//         settings: RouteSettings(name: CoreRoutePaths.portfolioList, arguments: arguments),
//       );

//     case CoreRoutePaths.portfolioDetail:
//       final arguments = args as Map<String, dynamic>?;
//       final portfolioId = arguments?['portfolio_id'] as num;
//       final invType = arguments?['inv_type'] as String? ?? 'Si[';
//       return MaterialPageRoute(
//         builder: (_) => CorePortfolioDetailView(
//           invType: invType,
//           portfolioId: portfolioId,
//         ),
//         settings: RouteSettings(name: CoreRoutePaths.portfolioDetail, arguments: arguments),
//       );

//     case CoreRoutePaths.portfolioOrder:
//       final arguments = args as Map<String, dynamic>?;
//       final portfolioId = arguments?['portfolio_id'] as num;
//       final invType = arguments?['inv_type'] as String;
//       final amount = arguments?['amount'] as num?;
//       return MaterialPageRoute(
//         builder: (_) => CorePortfolioOrderView(
//           invType: invType,
//           portfolioId: portfolioId,
//           amount: amount,
//         ),
//         settings: const RouteSettings(name: CoreRoutePaths.portfolioOrder),
//       );

//     case CoreRoutePaths.videos:
//       return MaterialPageRoute(
//         builder: (_) => const CoreVideosView(),
//         settings: const RouteSettings(name: CoreRoutePaths.videos),
//       );

//     case CoreRoutePaths.newsAndBlogs:
//       return MaterialPageRoute(
//         builder: (_) => const CoreNewsAndBlogsView(),
//         settings: const RouteSettings(name: CoreRoutePaths.newsAndBlogs),
//       );
//     case CoreRoutePaths.allFamilyMemberDetail:
//       return MaterialPageRoute(
//         builder: (_) => const CoreAllFamilyMemberView(),
//         settings: const RouteSettings(name: CoreRoutePaths.allFamilyMemberDetail),
//       );

//     case CoreRoutePaths.loanFeature:
//       return MaterialPageRoute(
//         builder: (_) => const CoreLoanFeatureView(),
//         settings: const RouteSettings(name: CoreRoutePaths.loanFeature),
//       );

//     case CoreRoutePaths.loanList:
//       return MaterialPageRoute(
//         builder: (_) => const CoreLoanListView(),
//         settings: const RouteSettings(name: CoreRoutePaths.loanList),
//       );

//     case CoreRoutePaths.loanDetail:
//       final arguments = args as Map<String, dynamic>?;
//       final lid = arguments?['lid'] as String;
//       return MaterialPageRoute(
//         builder: (_) => CoreLoanDetailView(lid: lid),
//         settings: const RouteSettings(name: CoreRoutePaths.loanDetail),
//       );
//     default:
//       return MaterialPageRoute(
//         builder: (_) {
//           return Scaffold(
//             appBar: AppBar(
//               title: Text('Error ${settings.name}'),
//               centerTitle: true,
//             ),
//             body: const Center(
//               child: Text(
//                 'Error ! Something went wrong core',
//                 style: TextStyle(color: Colors.red, fontSize: 18.0),
//               ),
//             ),
//           );
//         },
//         settings: const RouteSettings(name: 'core-404'),
//       );
//   }
// }

// class CoreCustomDurationPageRoute extends MaterialPageRoute {
//   final int durationInMilliseconds;

//   @override
//   Duration get transitionDuration => Duration(milliseconds: durationInMilliseconds);

//   CoreCustomDurationPageRoute({
//     required this.durationInMilliseconds,
//     required WidgetBuilder builder,
//     RouteSettings? settings,
//   }) : super(builder: builder, settings: settings);
// }

// class CoreFadePageRoute<T> extends MaterialPageRoute<T> {
//   final int durationInMilliseconds;

//   CoreFadePageRoute({
//     required this.durationInMilliseconds,
//     required WidgetBuilder builder,
//     RouteSettings? settings,
//   }) : super(builder: builder, settings: settings);

//   @override
//   Duration get transitionDuration => Duration(milliseconds: durationInMilliseconds);

//   @override
//   Widget buildTransitions(BuildContext context, Animation<double> animation,
//       Animation<double> secondaryAnimation, Widget child) {
//     return FadeTransition(
//       opacity: animation,
//       child: child,
//     );
//   }
// }

// class CoreZoomPageRoute extends PageRouteBuilder {
//   final WidgetBuilder builder;

//   CoreZoomPageRoute({
//     required this.builder,
//     RouteSettings? settings,
//     int durationInMilliseconds = 300,
//   }) : super(
//           settings: settings, // ✅ Pass it here
//           pageBuilder: (context, animation, secondaryAnimation) => builder(context),
//           transitionDuration: Duration(milliseconds: durationInMilliseconds),
//           reverseTransitionDuration: Duration(milliseconds: durationInMilliseconds),
//           transitionsBuilder: (context, animation, secondaryAnimation, child) {
//             return FadeTransition(
//               opacity: CurvedAnimation(
//                 parent: animation,
//                 curve: Curves.easeInExpo,
//               ),
//               child: ScaleTransition(
//                 scale: Tween<double>(begin: 0.9, end: 1.0).animate(CurvedAnimation(
//                   parent: animation,
//                   curve: Curves.easeIn,
//                 )),
//                 child: child,
//               ),
//             );
//           },
//         );
// }