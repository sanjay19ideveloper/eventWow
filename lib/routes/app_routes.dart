import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/presentation/logo_screen/logo_screen.dart';
import 'package:sanjay_s_application2/presentation/no_bookings_tab_container_screen/no_bookings_tab_container_screen.dart';
import 'package:sanjay_s_application2/presentation/lawn_business_five_tab_container_screen/lawn_business_five_tab_container_screen.dart';
import 'package:sanjay_s_application2/presentation/sub_category_screen/sub_category_screen.dart';
import 'package:sanjay_s_application2/presentation/filters_screen/filters_screen.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_container_screen/all_cities_photographer_container_screen.dart';
import 'package:sanjay_s_application2/presentation/filteres_screen/filteres_screen.dart';
import 'package:sanjay_s_application2/presentation/video_screen/video_screen.dart';
import 'package:sanjay_s_application2/presentation/add_adresss_screen/add_adresss_screen.dart';
import 'package:sanjay_s_application2/presentation/profile_saved_screen/profile_saved_screen.dart';
import 'package:sanjay_s_application2/presentation/reviews_screen/reviews_screen.dart';
import 'package:sanjay_s_application2/presentation/about_photography_screen/about_photography_screen.dart';
import 'package:sanjay_s_application2/presentation/subscription_screen/subscription_screen.dart';
import 'package:sanjay_s_application2/presentation/list_your_business_one_screen/list_your_business_one_screen.dart';
import 'package:sanjay_s_application2/presentation/list_your_business_screen/list_your_business_screen.dart';
import 'package:sanjay_s_application2/presentation/lawn_business_four_tab_container_screen/lawn_business_four_tab_container_screen.dart';
import 'package:sanjay_s_application2/presentation/lawn_business_two_screen/lawn_business_two_screen.dart';
import 'package:sanjay_s_application2/presentation/all_photos_screen/all_photos_screen.dart';
import 'package:sanjay_s_application2/presentation/all_photos_one_screen/all_photos_one_screen.dart';
import 'package:sanjay_s_application2/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:sanjay_s_application2/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:sanjay_s_application2/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:sanjay_s_application2/presentation/verification_screen/verification_screen.dart';
import 'package:sanjay_s_application2/presentation/notifications_one_screen/notifications_one_screen.dart';
import 'package:sanjay_s_application2/presentation/notifications_screen/notifications_screen.dart';
import 'package:sanjay_s_application2/presentation/humburger_screen/humburger_screen.dart';
import 'package:sanjay_s_application2/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:sanjay_s_application2/presentation/help_faqs_screen/help_faqs_screen.dart';
import 'package:sanjay_s_application2/presentation/contact_us_screen/contact_us_screen.dart';
import 'package:sanjay_s_application2/presentation/homepage_screen/homepage_screen.dart';
import 'package:sanjay_s_application2/presentation/profile_saved_one_screen/profile_saved_one_screen.dart';
import 'package:sanjay_s_application2/presentation/all_top_selling_one_tab_container_screen/all_top_selling_one_tab_container_screen.dart';
import 'package:sanjay_s_application2/presentation/all_top_selling_screen/all_top_selling_screen.dart';
import 'package:sanjay_s_application2/presentation/all_categories_screen/all_categories_screen.dart';
import 'package:sanjay_s_application2/presentation/wishlist_screen/wishlist_screen.dart';
import 'package:sanjay_s_application2/presentation/settings_screen/settings_screen.dart';
import 'package:sanjay_s_application2/presentation/chats_screen/chats_screen.dart';
import 'package:sanjay_s_application2/presentation/ratings_screen/ratings_screen.dart';
import 'package:sanjay_s_application2/presentation/chats_one_screen/chats_one_screen.dart';
import 'package:sanjay_s_application2/presentation/share_your_views_screen/share_your_views_screen.dart';
import 'package:sanjay_s_application2/presentation/app_settings_screen/app_settings_screen.dart';
import 'package:sanjay_s_application2/presentation/permissions_screen/permissions_screen.dart';
import 'package:sanjay_s_application2/presentation/profile_settings_screen/profile_settings_screen.dart';
import 'package:sanjay_s_application2/presentation/notification_settings_screen/notification_settings_screen.dart';
import 'package:sanjay_s_application2/presentation/no_chats_screen/no_chats_screen.dart';
import 'package:sanjay_s_application2/presentation/wishlist_one_screen/wishlist_one_screen.dart';
import 'package:sanjay_s_application2/presentation/submiited_screen/submiited_screen.dart';
import 'package:sanjay_s_application2/presentation/invites_screen/invites_screen.dart';
import 'package:sanjay_s_application2/presentation/drafts_screen/drafts_screen.dart';
import 'package:sanjay_s_application2/presentation/drafts_one_screen/drafts_one_screen.dart';
import 'package:sanjay_s_application2/presentation/invites_wedding_cards_tab_container_screen/invites_wedding_cards_tab_container_screen.dart';
import 'package:sanjay_s_application2/presentation/edit_page_four_tab_container_screen/edit_page_four_tab_container_screen.dart';
import 'package:sanjay_s_application2/presentation/edit_page_five_tab_container_screen/edit_page_five_tab_container_screen.dart';
import 'package:sanjay_s_application2/presentation/preview_card_screen/preview_card_screen.dart';
import 'package:sanjay_s_application2/presentation/published_screen/published_screen.dart';
import 'package:sanjay_s_application2/presentation/edit_page_eight_screen/edit_page_eight_screen.dart';
import 'package:sanjay_s_application2/presentation/my_checklist_screen/my_checklist_screen.dart';
import 'package:sanjay_s_application2/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:sanjay_s_application2/presentation/terms_conditions_screen/terms_conditions_screen.dart';
import 'package:sanjay_s_application2/presentation/transactions_screen/transactions_screen.dart';
import 'package:sanjay_s_application2/presentation/language_screen/language_screen.dart';
import 'package:sanjay_s_application2/presentation/rate_us_screen/rate_us_screen.dart';
import 'package:sanjay_s_application2/presentation/vendor_map_location_screen/vendor_map_location_screen.dart';
import 'package:sanjay_s_application2/presentation/vendor_profile_screen/vendor_profile_screen.dart';
import 'package:sanjay_s_application2/presentation/service_detail_screen/service_detail_screen.dart';
import 'package:sanjay_s_application2/presentation/all_photos_two_screen/all_photos_two_screen.dart';
import 'package:sanjay_s_application2/presentation/my_services_premium_screen/my_services_premium_screen.dart';
import 'package:sanjay_s_application2/presentation/add_my_checklist_screen/add_my_checklist_screen.dart';
import 'package:sanjay_s_application2/presentation/search_screen/search_screen.dart';
import 'package:sanjay_s_application2/presentation/check_in_popup_screen/check_in_popup_screen.dart';
import 'package:sanjay_s_application2/presentation/privacy_policy_one_screen/privacy_policy_one_screen.dart';
import 'package:sanjay_s_application2/presentation/faq_screen/faq_screen.dart';
import 'package:sanjay_s_application2/presentation/terms_conditions_one_screen/terms_conditions_one_screen.dart';
import 'package:sanjay_s_application2/presentation/settings_one_screen/settings_one_screen.dart';
import 'package:sanjay_s_application2/presentation/contact_us_one_screen/contact_us_one_screen.dart';
import 'package:sanjay_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String logoScreen = '/logo_screen';

  static const String noBookingsPage = '/no_bookings_page';

  static const String noBookingsTabContainerScreen =
      '/no_bookings_tab_container_screen';

  static const String lawnBusinessFivePage = '/lawn_business_five_page';

  static const String lawnBusinessFiveTabContainerScreen =
      '/lawn_business_five_tab_container_screen';

  static const String noBookingsOnePage = '/no_bookings_one_page';

  static const String subCategoryScreen = '/sub_category_screen';

  static const String filtersScreen = '/filters_screen';

  static const String allCitiesPhotographerPage =
      '/all_cities_photographer_page';

  static const String allCitiesPhotographerContainerScreen =
      '/all_cities_photographer_container_screen';

  static const String filteresScreen = '/filteres_screen';

  static const String videoScreen = '/video_screen';

  static const String addAdresssScreen = '/add_adresss_screen';

  static const String profileSavedScreen = '/profile_saved_screen';

  static const String reviewsScreen = '/reviews_screen';

  static const String aboutPhotographyScreen = '/about_photography_screen';

  static const String subscriptionScreen = '/subscription_screen';

  static const String listYourBusinessOneScreen =
      '/list_your_business_one_screen';

  static const String listYourBusinessScreen = '/list_your_business_screen';

  static const String lawnBusinessFourPage = '/lawn_business_four_page';

  static const String lawnBusinessFourTabContainerScreen =
      '/lawn_business_four_tab_container_screen';

  static const String lawnBusinessTwoScreen = '/lawn_business_two_screen';

  static const String allPhotosScreen = '/all_photos_screen';

  static const String allPhotosOneScreen = '/all_photos_one_screen';

  static const String upcomingBookingsPage = '/upcoming_bookings_page';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String verificationScreen = '/verification_screen';

  static const String notificationsOneScreen = '/notifications_one_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String humburgerScreen = '/humburger_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String helpFaqsScreen = '/help_faqs_screen';

  static const String contactUsScreen = '/contact_us_screen';

  static const String homepageScreen = '/homepage_screen';

  static const String profileSavedOneScreen = '/profile_saved_one_screen';

  static const String allTopSellingOnePage = '/all_top_selling_one_page';

  static const String allTopSellingOneTabContainerScreen =
      '/all_top_selling_one_tab_container_screen';

  static const String allTopSellingScreen = '/all_top_selling_screen';

  static const String allCategoriesScreen = '/all_categories_screen';

  static const String wishlistScreen = '/wishlist_screen';

  static const String settingsScreen = '/settings_screen';

  static const String chatsScreen = '/chats_screen';

  static const String ratingsScreen = '/ratings_screen';

  static const String chatsOneScreen = '/chats_one_screen';

  static const String shareYourViewsScreen = '/share_your_views_screen';

  static const String appSettingsScreen = '/app_settings_screen';

  static const String permissionsScreen = '/permissions_screen';

  static const String profileSettingsScreen = '/profile_settings_screen';

  static const String notificationSettingsScreen =
      '/notification_settings_screen';

  static const String noChatsScreen = '/no_chats_screen';

  static const String wishlistOneScreen = '/wishlist_one_screen';

  static const String submiitedScreen = '/submiited_screen';

  static const String invitesScreen = '/invites_screen';

  static const String draftsScreen = '/drafts_screen';

  static const String draftsOneScreen = '/drafts_one_screen';

  static const String invitesWeddingCardsPage = '/invites_wedding_cards_page';

  static const String invitesWeddingCardsTabContainerScreen =
      '/invites_wedding_cards_tab_container_screen';

  static const String sortByNewCardsPage = '/sort_by_new_cards_page';

  static const String sortByTrendingPage = '/sort_by_trending_page';

  static const String invitesVideoInvitesPage = '/invites_video_invites_page';

  static const String invitesVideoInvitesOnePage =
      '/invites_video_invites_one_page';

  static const String editPageOnePage = '/edit_page_one_page';

  static const String editPageTwoPage = '/edit_page_two_page';

  static const String editPageThreePage = '/edit_page_three_page';

  static const String editPageFourPage = '/edit_page_four_page';

  static const String editPageFourTabContainerScreen =
      '/edit_page_four_tab_container_screen';

  static const String editPageFivePage = '/edit_page_five_page';

  static const String editPageFiveTabContainerScreen =
      '/edit_page_five_tab_container_screen';

  static const String editPageSixPage = '/edit_page_six_page';

  static const String previewCardScreen = '/preview_card_screen';

  static const String publishedScreen = '/published_screen';

  static const String editPageEightScreen = '/edit_page_eight_screen';

  static const String myChecklistScreen = '/my_checklist_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String termsConditionsScreen = '/terms_conditions_screen';

  static const String transactionsScreen = '/transactions_screen';

  static const String languageScreen = '/language_screen';

  static const String rateUsScreen = '/rate_us_screen';

  static const String vendorMapLocationScreen = '/vendor_map_location_screen';

  static const String vendorProfileScreen = '/vendor_profile_screen';

  static const String serviceDetailScreen = '/service_detail_screen';

  static const String allPhotosTwoScreen = '/all_photos_two_screen';

  static const String upcomingBookingsOnePage = '/upcoming_bookings_one_page';

  static const String myServicesPremiumScreen = '/my_services_premium_screen';

  static const String addMyChecklistScreen = '/add_my_checklist_screen';

  static const String searchScreen = '/search_screen';

  static const String checkInPopupScreen = '/check_in_popup_screen';

  static const String privacyPolicyOneScreen = '/privacy_policy_one_screen';

  static const String faqScreen = '/faq_screen';

  static const String termsConditionsOneScreen = '/terms_conditions_one_screen';

  static const String settingsOneScreen = '/settings_one_screen';

  static const String contactUsOneScreen = '/contact_us_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        logoScreen: LogoScreen.builder,
        noBookingsTabContainerScreen: NoBookingsTabContainerScreen.builder,
        lawnBusinessFiveTabContainerScreen:
            LawnBusinessFiveTabContainerScreen.builder,
        subCategoryScreen: SubCategoryScreen.builder,
        filtersScreen: FiltersScreen.builder,
        allCitiesPhotographerContainerScreen:
            AllCitiesPhotographerContainerScreen.builder,
        filteresScreen: FilteresScreen.builder,
        videoScreen: VideoScreen.builder,
        addAdresssScreen: AddAdresssScreen.builder,
        profileSavedScreen: ProfileSavedScreen.builder,
        reviewsScreen: ReviewsScreen.builder,
        aboutPhotographyScreen: AboutPhotographyScreen.builder,
        subscriptionScreen: SubscriptionScreen.builder,
        listYourBusinessOneScreen: ListYourBusinessOneScreen.builder,
        listYourBusinessScreen: ListYourBusinessScreen.builder,
        lawnBusinessFourTabContainerScreen:
            LawnBusinessFourTabContainerScreen.builder,
        lawnBusinessTwoScreen: LawnBusinessTwoScreen.builder,
        allPhotosScreen: AllPhotosScreen.builder,
        allPhotosOneScreen: AllPhotosOneScreen.builder,
        onboardingTwoScreen: OnboardingTwoScreen.builder,
        signInScreen: SignInScreen.builder,
        signUpScreen: SignUpScreen.builder,
        verificationScreen: VerificationScreen.builder,
        notificationsOneScreen: NotificationsOneScreen.builder,
        notificationsScreen: NotificationsScreen.builder,
        humburgerScreen: HumburgerScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        helpFaqsScreen: HelpFaqsScreen.builder,
        contactUsScreen: ContactUsScreen.builder,
        homepageScreen: HomepageScreen.builder,
        profileSavedOneScreen: ProfileSavedOneScreen.builder,
        allTopSellingOneTabContainerScreen:
            AllTopSellingOneTabContainerScreen.builder,
        allTopSellingScreen: AllTopSellingScreen.builder,
        allCategoriesScreen: AllCategoriesScreen.builder,
        wishlistScreen: WishlistScreen.builder,
        settingsScreen: SettingsScreen.builder,
        chatsScreen: ChatsScreen.builder,
        ratingsScreen: RatingsScreen.builder,
        chatsOneScreen: ChatsOneScreen.builder,
        shareYourViewsScreen: ShareYourViewsScreen.builder,
        appSettingsScreen: AppSettingsScreen.builder,
        permissionsScreen: PermissionsScreen.builder,
        profileSettingsScreen: ProfileSettingsScreen.builder,
        notificationSettingsScreen: NotificationSettingsScreen.builder,
        noChatsScreen: NoChatsScreen.builder,
        wishlistOneScreen: WishlistOneScreen.builder,
        submiitedScreen: SubmiitedScreen.builder,
        invitesScreen: InvitesScreen.builder,
        draftsScreen: DraftsScreen.builder,
        draftsOneScreen: DraftsOneScreen.builder,
        invitesWeddingCardsTabContainerScreen:
            InvitesWeddingCardsTabContainerScreen.builder,
        editPageFourTabContainerScreen: EditPageFourTabContainerScreen.builder,
        editPageFiveTabContainerScreen: EditPageFiveTabContainerScreen.builder,
        previewCardScreen: PreviewCardScreen.builder,
        publishedScreen: PublishedScreen.builder,
        editPageEightScreen: EditPageEightScreen.builder,
        myChecklistScreen: MyChecklistScreen.builder,
        privacyPolicyScreen: PrivacyPolicyScreen.builder,
        termsConditionsScreen: TermsConditionsScreen.builder,
        transactionsScreen: TransactionsScreen.builder,
        languageScreen: LanguageScreen.builder,
        rateUsScreen: RateUsScreen.builder,
        vendorMapLocationScreen: VendorMapLocationScreen.builder,
        vendorProfileScreen: VendorProfileScreen.builder,
        serviceDetailScreen: ServiceDetailScreen.builder,
        allPhotosTwoScreen: AllPhotosTwoScreen.builder,
        myServicesPremiumScreen: MyServicesPremiumScreen.builder,
        addMyChecklistScreen: AddMyChecklistScreen.builder,
        searchScreen: SearchScreen.builder,
        checkInPopupScreen: CheckInPopupScreen.builder,
        privacyPolicyOneScreen: PrivacyPolicyOneScreen.builder,
        faqScreen: FaqScreen.builder,
        termsConditionsOneScreen: TermsConditionsOneScreen.builder,
        settingsOneScreen: SettingsOneScreen.builder,
        contactUsOneScreen: ContactUsOneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LogoScreen.builder
      };
}
