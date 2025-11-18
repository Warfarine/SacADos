import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  /// prevention af header
  ///
  /// In en, this message translates to:
  /// **'Preventing athlete\'s foot'**
  String get afPreventionHeader;

  /// Prevention steps for athlete's foot
  ///
  /// In en, this message translates to:
  /// **'● Keep feet dry and clean\n● Change your socks often 🧦\n●Focus on drying the skin between the toes\n● You can use drying foot powders to help keep feet dry\n● When using shared showers, try to wear sandals or flip—flops 🩴\n● Do not share clothing or towels with others'**
  String get afPrevention;

  /// Warning steps if athlete's foot appears
  ///
  /// In en, this message translates to:
  /// **'● Do not scratch or touch your feet\n● Try to keep feet clean and dry\n● Seek medical help, especially if you notice signs of infection or have other medical issues like diabetes or circulation problems'**
  String get afPreventionWarning;

  /// tx for athelete's foot header
  ///
  /// In en, this message translates to:
  /// **'Treatment for athlete\'s foot'**
  String get afTxHeader;

  /// Treatment options for athlete's foot
  ///
  /// In en, this message translates to:
  /// **'There are antifungal creams that exist for mild cases of athlete\'s foot. Always ask the pharmacist for help\n\nFor more severe cases, consult a doctor'**
  String get afTx;

  /// Athlete's foot image 1
  ///
  /// In en, this message translates to:
  /// **'Visible red and irritated patches, especially around the toes; peeling skin'**
  String get afimage1;

  /// Athlete's foot image 2
  ///
  /// In en, this message translates to:
  /// **'Redness and small blisters on the toe, some peeling skin'**
  String get afimage2;

  /// Athlete's foot image 3
  ///
  /// In en, this message translates to:
  /// **'Skin between the toes is cracked and peeled, appears discolored; some irritation and minor swelling'**
  String get afimage3;

  /// Athlete's foot image 4
  ///
  /// In en, this message translates to:
  /// **'Skin between the toes is very cracked and peeled, appears very moist'**
  String get afimage4;

  /// Athlete's foot image 5
  ///
  /// In en, this message translates to:
  /// **'Skin is discolored and darker with very small blisters; skin appears dry'**
  String get afimage5;

  /// Athlete's foot image 6
  ///
  /// In en, this message translates to:
  /// **'Sole of the foot is thicker, skin is very dry and peeling. This is a minor case of athlete\'s foot'**
  String get afimage6;

  /// Header for athlete's foot
  ///
  /// In en, this message translates to:
  /// **'Athlete\'s foot'**
  String get athleteFoot;

  /// Definition of athlete's foot
  ///
  /// In en, this message translates to:
  /// **'Athlete\'s foot is a skin problem caused by coming into contact with a small fungus (mushroom). It is very common and people get it if they walk barefoot in communal showers, lockers or swimming pools'**
  String get athleteFootDef;

  /// Dialog box for athlete's foot images
  ///
  /// In en, this message translates to:
  /// **'Click here to see images of athlete\'s foot'**
  String get athleteFootImages;

  /// Label for athlete's foot header
  ///
  /// In en, this message translates to:
  /// **'Skin infection caused by a fungus'**
  String get athleteFootLabel;

  /// Symptoms of athlete's foot header
  ///
  /// In en, this message translates to:
  /// **'Athlete\'s foot symptoms'**
  String get athleteFootSxHeader;

  /// Symptoms of athlete's foot
  ///
  /// In en, this message translates to:
  /// **'● Red or darker looking patches 🔴\n● Itchiness and pain\n● Skin might peel or crack, especially between the toes 🦶\n● Soles of the feet might seem thicker, dry and flaky'**
  String get athleteFootSx;

  /// header for bites
  ///
  /// In en, this message translates to:
  /// **'Bites'**
  String get bites;

  /// header label for bites
  ///
  /// In en, this message translates to:
  /// **'Someone was bitten by an animal or a person'**
  String get bitesLabel;

  /// bites warning
  ///
  /// In en, this message translates to:
  /// **'If the bite pierces the skin, seek medical attention. These wounds are at risk of infection\nAlso, some animals can carry rabies, and you might need a vaccine'**
  String get biteWarning;

  /// step 1 bites care
  ///
  /// In en, this message translates to:
  /// **'1. Clean the bitten area with mild soap and lukewarm water for 5-10 minutes 🕒'**
  String get bitesCare1;

  /// step 2 bites care
  ///
  /// In en, this message translates to:
  /// **'2. Find a clean towel or cloth and apply pressure to the wound, especially if it is bleeding'**
  String get bitesCare2;

  /// step 3 bites care
  ///
  /// In en, this message translates to:
  /// **'3. Go to the nearest emergency room or walk-in clinic'**
  String get bitesCare3;

  /// bite images
  ///
  /// In en, this message translates to:
  /// **'Click here to see images of bites that need medical help'**
  String get bitesImages;

  /// bite images
  ///
  /// In en, this message translates to:
  /// **'Fresh cat bite wound; deep puncture wounds, with early swelling reaction'**
  String get bitesImage1;

  /// bite images
  ///
  /// In en, this message translates to:
  /// **'Infected bite wound; redness and swelling are spreading over the whole hand'**
  String get bitesImage2;

  /// bite images
  ///
  /// In en, this message translates to:
  /// **'Infected bite wound; deep redness and swelling are spreading over the leg'**
  String get bitesImage3;

  /// header for blisters
  ///
  /// In en, this message translates to:
  /// **'Blisters'**
  String get blister;

  /// def for blisters
  ///
  /// In en, this message translates to:
  /// **'Blisters are caused by repeated rubbing on the foot (for example, by wearing ill—fitting shoes)'**
  String get blisterDef;

  /// label for blisters
  ///
  /// In en, this message translates to:
  /// **'Small pocket of fluid on the foot'**
  String get blisterLabel;

  /// images of blisters
  ///
  /// In en, this message translates to:
  /// **'Click here to see images of blisters'**
  String get blisterImages;

  /// images of blisters
  ///
  /// In en, this message translates to:
  /// **'Large fluid-filled pocket on the heel'**
  String get blisterImage1;

  /// images of blisters
  ///
  /// In en, this message translates to:
  /// **'Large fluid-filled pocket on the sole of the foot, with redness'**
  String get blisterImage2;

  /// images of blisters
  ///
  /// In en, this message translates to:
  /// **'Healed blister that had burst; skin is peeling, seems dry'**
  String get blisterImage3;

  /// images of blisters
  ///
  /// In en, this message translates to:
  /// **'Freshly burst blister that is leaking clear fluid'**
  String get blisterImage4;

  /// images of blisters
  ///
  /// In en, this message translates to:
  /// **'Sometimes, blood can accumulate under the blister'**
  String get blisterImage5;

  /// images of blisters
  ///
  /// In en, this message translates to:
  /// **'The fluid in the blister seems greener and darker, with redness and swelling around the blister. This blister may be infected'**
  String get blisterImage6;

  /// prevention for blisters header
  ///
  /// In en, this message translates to:
  /// **'Preventing blisters'**
  String get blisterPreventionHeader;

  /// prevention for blisters
  ///
  /// In en, this message translates to:
  /// **'● Wear shoes and socks that fit 👟🥾 not too big, not too tight\n● Always wear socks with your shoes 🧦\n● Keep feet dry as moist feet are more prone to blisters'**
  String get blisterPrevention;

  /// prevention warning for blisters
  ///
  /// In en, this message translates to:
  /// **'Always seek medical help if you notice signs of infection or have other medical issues like diabetes or circulation problems'**
  String get blisterPreventionWarning;

  /// blisters sx header
  ///
  /// In en, this message translates to:
  /// **'Blister symptoms'**
  String get blisterSxHeader;

  /// blisters sx
  ///
  /// In en, this message translates to:
  /// **'● Round fluid-filled vesicles (fluid is typically clear)\n● Redness around the area 🔴\n● Painful burning sensation 🔥'**
  String get blisterSx;

  /// tx for blisters header
  ///
  /// In en, this message translates to:
  /// **'Treatment for blisters'**
  String get blisterTxHeader;

  /// tx for blisters
  ///
  /// In en, this message translates to:
  /// **'● Never break or pop the blister 🎈💥 This increases the risk of infection\n● Use bandages, protective dressings or clean socks to add padding to protect the blister\n● There are special bandages that can help, called hydrocolloidal dressings — ask the pharmacist for help\n● If the blister pops, clean it with warm water and mild soap for 5-10 minutes\n● Clean the blister every day and watch for signs of infection'**
  String get blisterTx;

  /// header title for burns
  ///
  /// In en, this message translates to:
  /// **'Burns'**
  String get burns;

  /// def for burns
  ///
  /// In en, this message translates to:
  /// **'Burns can occur due to exposure to heat, like hot liquids, steam, fire, or hot objects like a stove'**
  String get burnsDef;

  /// label for burns
  ///
  /// In en, this message translates to:
  /// **'Skin was burned by a heat source'**
  String get burnsLabel;

  /// follow—ups for burns header
  ///
  /// In en, this message translates to:
  /// **'How to care for a burn'**
  String get burnsFollowupHeader;

  /// follow—ups for burns
  ///
  /// In en, this message translates to:
  /// **'\n● Wash the burn with soap and water every day and apply a new dressing\n● Monitor the burn for signs of infection\n● If blisters do develop, never pop them\n● If the burn begins to itch, do not scratch it\n● Superficial burns can take up to a week to heal; deeper burns will take longer to heal'**
  String get burnsFollowup;

  /// images of burns
  ///
  /// In en, this message translates to:
  /// **'Click here to see images of burns'**
  String get burnsImages;

  /// image of burns
  ///
  /// In en, this message translates to:
  /// **'1st degree: Skin is red and dry, only the top layer of the skin is affected'**
  String get burnsFirstDegree1;

  /// image of burns
  ///
  /// In en, this message translates to:
  /// **'1st degree: Skin has a darker color and is dry; note the arm hair that has been burned off'**
  String get burnsFirstDegree2;

  /// image of burns
  ///
  /// In en, this message translates to:
  /// **'1st degree: Skin has a darker color and is dry; a small blister is forming'**
  String get burnsFirstDegree3;

  /// image of burns
  ///
  /// In en, this message translates to:
  /// **'2nd degree: Skin is very red and swollen; the very top layer of the skin is peeling off '**
  String get burnsSecondDegree1;

  /// image of burns
  ///
  /// In en, this message translates to:
  /// **'2nd degree: Skin is slightly discolored, seems mildly swollen; fluid-filled blisters have appeared'**
  String get burnsSecondDegree2;

  /// image of burns
  ///
  /// In en, this message translates to:
  /// **'2nd degree: Another example of blisters that can occur; note the darker skin around the blisters'**
  String get burnsSecondDegree3;

  /// image of burns
  ///
  /// In en, this message translates to:
  /// **'2nd degree: Underlying skin is red and seeping clear fluid (has a wet look)'**
  String get burnsSecondDegree4;

  /// image of burns
  ///
  /// In en, this message translates to:
  /// **'3rd degree: Complete loss of dark skin tone, burn appears white; lots of redness and skin is peeling'**
  String get burnsThirdDegree1;

  /// image of burns
  ///
  /// In en, this message translates to:
  /// **'3rd degree: Multiple layers of skin are visible'**
  String get burnsThirdDegree2;

  /// image of burns
  ///
  /// In en, this message translates to:
  /// **'3rd degree: Deeper wound with a dry, crusted, darker center and 2nd degree burns around it'**
  String get burnsThirdDegree3;

  /// burns sx
  ///
  /// In en, this message translates to:
  /// **'Symptoms depend on how intense the burn is'**
  String get burnsSxHeader;

  /// burns sx
  ///
  /// In en, this message translates to:
  /// **'● For superficial burns (1st degree) the skin is red, dry and painful 🔴\n● Partial thickness burns (2nd degree) are deeper. Skin appears red, discolored and will have blisters 💢\n● Full thickness burns (3rd degree) appear white, gray or black and you won\'t feel pain'**
  String get burnsSx;

  /// burns tx header
  ///
  /// In en, this message translates to:
  /// **'Immediate treatment for burns'**
  String get burnsTxHeader;

  /// tx for burns step 1
  ///
  /// In en, this message translates to:
  /// **'● Immediately remove any clothing that is covering the burn. If the clothes stick to the skin, immediately go to an emergency room, do not try to remove them yourself'**
  String get burnsTxStep1;

  /// tx for burns step 2
  ///
  /// In en, this message translates to:
  /// **'● Cool the area by running cold water on the burn continuously for at least 15 minutes\n● Never put ice on the burn 🧊❌'**
  String get burnsTxStep2;

  /// tx for burns step 3
  ///
  /// In en, this message translates to:
  /// **'● After cooling the burn for 15 minutes, wash the area with cool water and a mild soap. Let air dry or very gently pat dry with a clean cloth'**
  String get burnsTxStep3;

  /// tx for burns step 4
  ///
  /// In en, this message translates to:
  /// **'● Do not apply any creams or products to the burn 🧴❌\n● Apply a non-stick dressing to the burn'**
  String get burnsTxStep4;

  /// prevention warning for burns
  ///
  /// In en, this message translates to:
  /// **'Seek help for any burn that:\n● Is a 2nd or 3rd degree burn\n● Involves the face, hands, fingers, genitals or feet\n● Is larger than the size of an orange 🍊\n● If there are signs of infection'**
  String get burnsWarning;

  /// header for callus
  ///
  /// In en, this message translates to:
  /// **'Corns and calluses'**
  String get callus;

  /// def for header
  ///
  /// In en, this message translates to:
  /// **'Calluses are large patches of thickened skin. Corns are typically small, localized areas of hard skin that can be painful. Both occur because of repeated pressure or rubbing on the foot (for example, by wearing ill-fitting shoes)'**
  String get callusDef;

  /// def for header
  ///
  /// In en, this message translates to:
  /// **'Thickened skin on the foot'**
  String get callusLabel;

  /// images of calluses
  ///
  /// In en, this message translates to:
  /// **'Click here to see images of corns and calluses'**
  String get callusImages;

  /// images of corns & calluses
  ///
  /// In en, this message translates to:
  /// **'Calluses. Thickened, yellowed skin and some peeling on the soles of the feet'**
  String get callusImage1;

  /// images of corns & calluses
  ///
  /// In en, this message translates to:
  /// **'Calluses. Thickened skin with a yellowish color on the side of the foot'**
  String get callusImage2;

  /// images of corns & calluses
  ///
  /// In en, this message translates to:
  /// **'Calluses. Thickened skin with small fissures on the heels of the feet'**
  String get callusImage3;

  /// images of corns & calluses
  ///
  /// In en, this message translates to:
  /// **'Corns. Hard and dark bump on the toe'**
  String get callusImage4;

  /// images of corns & calluses
  ///
  /// In en, this message translates to:
  /// **'Corns. Hard bump with peeling skin and redness on the toe'**
  String get callusImage5;

  /// images of corns & calluses
  ///
  /// In en, this message translates to:
  /// **'Corns. Hard bump with thickened skin; visible peeling and redness around the corn'**
  String get callusImage6;

  /// prevention for calluses header
  ///
  /// In en, this message translates to:
  /// **'Preventing corns and calluses'**
  String get callusPreventionHeader;

  /// prevention for calluses
  ///
  /// In en, this message translates to:
  /// **'● Wear shoes and socks that fit — not too big, not too tight 👟🥾 Your toes should be able to move freely\n● Always wear socks with your shoes 🧦\n● Avoid walking barefoot\n● Keep your feet clean and dry'**
  String get callusPrevention;

  /// prevention warning for calluses
  ///
  /// In en, this message translates to:
  /// **'Always seek medical help if you notice signs of infection or have other medical issues like diabetes or circulation problems'**
  String get callusPreventionWarning;

  /// sx for calluses header
  ///
  /// In en, this message translates to:
  /// **'Calluses and corns symptoms'**
  String get callusSxHeader;

  /// sx for calluses
  ///
  /// In en, this message translates to:
  /// **'● Calluses: hardening and thickening of the skin; it might peel or crack\n● Corns: hard bumps form on pressure points of the foot'**
  String get callusSx;

  /// tx for calluses header
  ///
  /// In en, this message translates to:
  /// **'Treatment for calluses and corns'**
  String get callusTxHeader;

  /// tx for calluses
  ///
  /// In en, this message translates to:
  /// **'● Never attempt to remove a callus or corn by yourself\n● Apply a thin layer of hydrating cream on your feet, especially on the heel 🧴\n● Avoid putting too much cream between the toes, this area should stay dry\n● Sometimes, soaking your feet in warm water for 20 minutes can help soften calluses 🦶🛁\n● There are plasters that you can buy at the pharmacy that can help — ask the pharmacist for help'**
  String get callusTx;

  /// Close button for dialog box
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// disclaimer for intro page
  ///
  /// In en, this message translates to:
  /// **'Created by the McGill Ingram School of Nursing students'**
  String get creation;

  /// Header for cuts & scrapes
  ///
  /// In en, this message translates to:
  /// **'Cuts & scrapes'**
  String get cuts;

  /// Dialog box for cut images
  ///
  /// In en, this message translates to:
  /// **'Click here to see images of cuts that need stitches'**
  String get cutsImages;

  /// Step 1a for cuts
  ///
  /// In en, this message translates to:
  /// **'Look at your wound — if you see any of the following, you might need stitches 🪡'**
  String get cutsStep1a;

  /// Step 1a suite for cuts
  ///
  /// In en, this message translates to:
  /// **'Look at your wound — if you see the following, you might need a tetanus shot 💉'**
  String get cutsStep1aExtra;

  /// Step 1b for cuts
  ///
  /// In en, this message translates to:
  /// **'● Larger than 1/2\" or 2 cm\n● Deeper than 1/4\" or 6 mm'**
  String get cutsStep1b;

  /// Step 1c for cuts
  ///
  /// In en, this message translates to:
  /// **'● Visible fatty tissue, tendons or muscle'**
  String get cutsStep1c;

  /// Step 1d for cuts
  ///
  /// In en, this message translates to:
  /// **'● Dirt, grit or glass in the wound'**
  String get cutsStep1d;

  /// Step 1e for cuts
  ///
  /// In en, this message translates to:
  /// **'Find a clean cloth or towel to cover your wound and seek medical care'**
  String get cutsStep1e;

  /// Proceed to step 2 for cuts
  ///
  /// In en, this message translates to:
  /// **'If the wound does not requires immediate medical attention, follow these steps to help it heal'**
  String get cutsStep1ok;

  /// Step 2 for cuts
  ///
  /// In en, this message translates to:
  /// **'1. Clean your wound with mild soap and lukewarm water for 5-10 minutes'**
  String get cutsStep2;

  /// Step 3 for cuts
  ///
  /// In en, this message translates to:
  /// **'2. Gently pat dry with a clean cloth or towel'**
  String get cutsStep3;

  /// Step 4 for cuts
  ///
  /// In en, this message translates to:
  /// **'3. If the wound is bleeding, take a clean cloth or towel and apply firm pressure for 15 minutes'**
  String get cutsStep4;

  /// Step 4a for cuts
  ///
  /// In en, this message translates to:
  /// **'If the bleeding does not lessen or stop after 15 minutes, seek medical care immediately'**
  String get cutsStep4a;

  /// Step 5 for cuts
  ///
  /// In en, this message translates to:
  /// **'Never put these products on your wound as they damage the skin: \n\n● Rubbing alcohol ❌\n● Hydrogen peroxide ❌\n● Bleach ❌'**
  String get cutsStep5;

  /// Step 6 for cuts
  ///
  /// In en, this message translates to:
  /// **'● Apply a clean self-adhesive bandage like a Band-aid to the wound\n● For larger wounds, apply a compress over the wound and secure it with medical tape or a gauze roll\n● The dressing should be snug, but it shouldn’t cause pain\n● Do not apply any adhesive tape directly to the wound'**
  String get cutsStep6;

  /// Step 6 for cuts - examples dressings
  ///
  /// In en, this message translates to:
  /// **'Examples of dressings'**
  String get cutsStep6Examples;

  /// Step 7 for cuts
  ///
  /// In en, this message translates to:
  /// **'● Keep the dressing dry and clean\n● Change the dressing every 24 hours or if it gets soiled\n● Before removing the old dressing, wash your hands with soap and water for 1 minute 🕐\n● If the dressing is sticking to the wound, gently run if under warm water to help remove it 🚿\n● Always take a good look at the wound before putting a new dressing for signs of infection'**
  String get cutsStep7;

  /// Step 8 for cuts
  ///
  /// In en, this message translates to:
  /// **'Typically, minor wounds will heal within 7 to 10 days'**
  String get cutsStep8;

  /// Definition for cuts & scrapes
  ///
  /// In en, this message translates to:
  /// **'The skin got cut, torn or scraped'**
  String get defCuts;

  /// Header for infection symptoms
  ///
  /// In en, this message translates to:
  /// **'Signs and symptoms of a skin infection'**
  String get defInfection;

  /// Normal wound discharge image description
  ///
  /// In en, this message translates to:
  /// **'Clear to yellowish, watery. This is normal'**
  String get dischargeClear;

  /// Normal wound discharge image description
  ///
  /// In en, this message translates to:
  /// **'Light pink because of a tinge of blood, watery. This is normal'**
  String get dischargePink;

  /// Abnormal wound discharge image description
  ///
  /// In en, this message translates to:
  /// **'Thick yellow, greenish or gray pus that might smell bad. This is an infection, seek medical care'**
  String get dischargePus;

  /// Abnormal wound discharge image description
  ///
  /// In en, this message translates to:
  /// **'Red and bloody. Continue to monitor'**
  String get dischargeRed;

  /// Main disclaimer
  ///
  /// In en, this message translates to:
  /// **'Please note these are student products. Although we strive to ensure the products are accurate, ethical, and credible, by using the products, the user is responsible for possible errors, omissions and outcomes that can be present inadvertently'**
  String get disclaimer;

  /// header title for frostbite
  ///
  /// In en, this message translates to:
  /// **'Frostbite'**
  String get frostbite;

  /// header label for frostbite
  ///
  /// In en, this message translates to:
  /// **'Skin damage from the cold'**
  String get frostbiteLabel;

  /// frostbite definition
  ///
  /// In en, this message translates to:
  /// **'Frostbites happen when the skin is exposed to freezing temperatures. In severe cases, they can cause permanent damage'**
  String get frostbiteDef;

  /// images of frostbite
  ///
  /// In en, this message translates to:
  /// **'Click here for images of frostbite'**
  String get frostbiteImages;

  /// image of frostbite
  ///
  /// In en, this message translates to:
  /// **'1st degree: Skin is red on top of foot and appears darker near the toes; skin is intact'**
  String get frostFirstDegree1;

  /// image of frostbite
  ///
  /// In en, this message translates to:
  /// **'1st degree: The top of the ear is bright red with no other lesions'**
  String get frostFirstDegree2;

  /// image of frostbite
  ///
  /// In en, this message translates to:
  /// **'1st degree: Visible redness on the fingers'**
  String get frostFirstDegree3;

  /// image of frostbite
  ///
  /// In en, this message translates to:
  /// **'2nd degree: Skin appears darker, redder with visible swelling'**
  String get frostSecondDegree1;

  /// image of frostbite
  ///
  /// In en, this message translates to:
  /// **'2nd degree: Clear blisters are forming on the fingers; skin appears redder'**
  String get frostSecondDegree2;

  /// image of frostbite
  ///
  /// In en, this message translates to:
  /// **'2nd degree: Fingers are swollen, slightly discolored, with small blisters near the nails'**
  String get frostSecondDegree3;

  /// image of frostbite
  ///
  /// In en, this message translates to:
  /// **'3rd degree: Tip of the fingers are pale'**
  String get frostThirdDegree1;

  /// image of frostbite
  ///
  /// In en, this message translates to:
  /// **'3rd degree: Skin is discolored, with areas of pale or white skin and other darker areas'**
  String get frostThirdDegree2;

  /// image of frostbite
  ///
  /// In en, this message translates to:
  /// **'4th degree: Tip of the fingers are dark and waxy'**
  String get frostFourthDegree1;

  /// image of frostbite
  ///
  /// In en, this message translates to:
  /// **'4th degree: Tips of the fingers are black, hard and dry'**
  String get frostFourthDegree2;

  /// image of frostbite
  ///
  /// In en, this message translates to:
  /// **'Feet have been thawing. There can be some swelling and redness, and it can be painful'**
  String get frostThaw;

  /// frostbite prevention header
  ///
  /// In en, this message translates to:
  /// **'Preventing frostbite'**
  String get frostbitePreventionHeader;

  /// prevention for frostbite
  ///
  /// In en, this message translates to:
  /// **'● Avoid being outside for extended periods of time when it is cold\n● Layer your clothes, it adds more protection from the cold 🧣🧥🧤\n● Have extra clothes and change them if they become wet\n● For your feet, avoid tight shoes and socks 🥾\n● Seek immediate shelter during periods of extreme cold (–15 °C or colder) 🌡️❄️'**
  String get frostbitePrevention;

  /// frostbite sx header
  ///
  /// In en, this message translates to:
  /// **'Symptoms depend on how bad the frostbite is'**
  String get frostbiteSxHeader;

  /// frostbite sx
  ///
  /// In en, this message translates to:
  /// **'● In mild cases (1st degree), the skin will appear red or dark and feel cold to the touch 🔴❄️\n● Stinging or burning sensation 🔥\n● For second degree frostbites, skin is swollen, and blisters form\n● For third degree frostbites, skin will become pale or ashy ⚪ and feel numb\n● In the most severe cases, the skin is hard, waxy looking and black, and you lose sensation'**
  String get frostbiteSx;

  /// frostbite severe sx
  ///
  /// In en, this message translates to:
  /// **'Once the skin goes from red to pale 🔴→⚪, it means the frostbite is getting worse and the skin is getting deeper damage — seek medical advice when this happens'**
  String get frostbiteSevereSx;

  /// tx header for frostbite
  ///
  /// In en, this message translates to:
  /// **'Treatment for frostbite'**
  String get frostbiteTxHeader;

  /// tx for frostbite
  ///
  /// In en, this message translates to:
  /// **'● Go to a warm and dry place\n● Do not rub the affected skin, as it is very delicate\n● Do not soak the affected skin in very hot water ♨️❌, as this will hurt it \n● You can soak your skin in room temperature water, unless the skin is already wet (in that case, it needs to air dry)\n● As your skin rewarms, it might hurt — this is normal. The affected skin might look red and swollen'**
  String get frostbiteTx;

  /// frostbite warnings
  ///
  /// In en, this message translates to:
  /// **'As you warm up the affected skin, it should go back to its normal color and appearance. If you see no improvement after a few hours, seek medical attention immediately'**
  String get frostbiteWarning;

  /// Main welcome message
  ///
  /// In en, this message translates to:
  /// **'Welcome!'**
  String get hello;

  /// Initial menu — foot care option
  ///
  /// In en, this message translates to:
  /// **'My feet'**
  String get helpFootCare;

  /// Initial menu — general help
  ///
  /// In en, this message translates to:
  /// **'I need help with...'**
  String get helpGen;

  /// Initial menu — skin prevention option
  ///
  /// In en, this message translates to:
  /// **'Protecting my skin'**
  String get helpPrevention;

  /// Initial menu — wound care option
  ///
  /// In en, this message translates to:
  /// **'Wound care'**
  String get helpWound;

  /// Header for infection symptoms
  ///
  /// In en, this message translates to:
  /// **'Skin infection'**
  String get infection;

  /// Infection image 1
  ///
  /// In en, this message translates to:
  /// **'Redness & swelling; thick yellow discharge'**
  String get infection1;

  /// Infection image 2
  ///
  /// In en, this message translates to:
  /// **'Darker and more swollen skin compared to the other leg'**
  String get infection2;

  /// Infection image 3
  ///
  /// In en, this message translates to:
  /// **'Redness & swelling spreading from wound; yellowish discharge'**
  String get infection3;

  /// Infection image 4
  ///
  /// In en, this message translates to:
  /// **'Darker skin with significant swelling'**
  String get infection4;

  /// Infection image 5
  ///
  /// In en, this message translates to:
  /// **'Redness & swelling spreading from wound; thick, yellow-green discharge'**
  String get infection5;

  /// Infection image 6
  ///
  /// In en, this message translates to:
  /// **'Skin is darker and very swollen'**
  String get infection6;

  /// Dialog box images for skin infections
  ///
  /// In en, this message translates to:
  /// **'Click here to see images of skin infections'**
  String get infectionImages;

  /// Header for infection prevention
  ///
  /// In en, this message translates to:
  /// **'Preventing wound infections'**
  String get infectionPreventionHeader;

  /// infection prevention list
  ///
  /// In en, this message translates to:
  /// **'● Keep wounds clean and covered with a clean bandage\n● Change bandages daily or when they become soiled\n● Wash your hands with soap and water before and after changing a bandage 🧼\n● Avoid touching your wounds'**
  String get infectionPrevention;

  /// Note about higher risk for infection
  ///
  /// In en, this message translates to:
  /// **'If you have diabetes, poor circulation, a weakened immune system or other health conditions, you may be at higher risk for skin infections. Always seek medical care to help with your wound care'**
  String get infectionPreventionNote;

  /// immersion foot title header
  ///
  /// In en, this message translates to:
  /// **'Immersion foot'**
  String get immersionFoot;

  /// def for immersion foot
  ///
  /// In en, this message translates to:
  /// **'Immersion foot is when the foot gets damaged by exposure to cold, wet conditions. It can happen when wearing wet shoes and socks without changing them'**
  String get immersionFootDef;

  /// immersion foot label header
  ///
  /// In en, this message translates to:
  /// **'The feet are damaged because of being wet and cold for a long time'**
  String get immersionFootLabel;

  /// images of immersion foot
  ///
  /// In en, this message translates to:
  /// **'Click here for images of immersion foot'**
  String get immersionFootImages;

  /// images of immersion foot
  ///
  /// In en, this message translates to:
  /// **'Foot is very wrinkly, wet and pale'**
  String get immersionFootImage1;

  /// images of immersion foot
  ///
  /// In en, this message translates to:
  /// **'The skin is discolored, very wrinkly and wet; some redness is appearing under the toes'**
  String get immersionFootImage2;

  /// images of immersion foot
  ///
  /// In en, this message translates to:
  /// **'Foot is wrinkly, red, seems slightly swollen'**
  String get immersionFootImage3;

  /// images of immersion foot
  ///
  /// In en, this message translates to:
  /// **'Feet have swollen toes and blisters'**
  String get immersionFootImage4;

  /// images of immersion foot
  ///
  /// In en, this message translates to:
  /// **'The feet are very discolored, darker and swollen'**
  String get immersionFootImage5;

  /// prevention for immersion foot header
  ///
  /// In en, this message translates to:
  /// **'Preventing immersion foot'**
  String get immersionFootPreventionHeader;

  /// prevention for immersion foot
  ///
  /// In en, this message translates to:
  /// **'● Always keep your feet clean and dry\n● Have extra pairs of socks and change your socks when they are wet 🧦💧\n● If your feet are wet and cold, try to find a warm place where you can take off your shoes to dry out your feet. While you do this, you can remove the soles of your shoes to help them dry out faster'**
  String get immersionFootPrevention;

  /// immersionFoot sx header
  ///
  /// In en, this message translates to:
  /// **'Immersion foot symptoms'**
  String get immersionFootSxHeader;

  /// immersionFoot sx
  ///
  /// In en, this message translates to:
  /// **'● At first, feet appear pale or grayish ⚪️, with wrinkly skin and cold to the touch ❄️\n● They will feel numb (loss of sensation)\n● As it gets worse, feet become red, swollen and very painful 🔴\n● Blisters can appear'**
  String get immersionFootSx;

  /// tx for immersion foot header
  ///
  /// In en, this message translates to:
  /// **'Immersion foot treatment'**
  String get immersionFootTxHeader;

  /// tx for immersion foot
  ///
  /// In en, this message translates to:
  /// **'● Go to a warm and dry place, remove shoes and socks\n● Do not rub your feet, the skin is very delicate (you can lightly pat them dry with a clean towel)\n● Do not put hot water on your feet\n● Your feet need to warm up slowly and to air dry\n● As your feet rewarm, it might hurt — this is normal. Your feet might look red and swollen\n● Try to stay seated and to keep your feet raised to help reduce the swelling'**
  String get immersionFootTx;

  /// tx warning for immersion foot
  ///
  /// In en, this message translates to:
  /// **'As your feet warm up and dry, they should go back to their normal color and appearance. If you see no improvement after a few hours, seek medical attention'**
  String get immersionFootWarning;

  /// ingrown nail title header
  ///
  /// In en, this message translates to:
  /// **'Ingrown nail'**
  String get ingrownNail;

  /// def for ingrown nail
  ///
  /// In en, this message translates to:
  /// **'An ingrown nail is when the corner of the toenail grows into the surrounding skin, which can cause pain and damage the skin. It often happens on the big toe'**
  String get ingrownNailtDef;

  /// ingrown nail label header
  ///
  /// In en, this message translates to:
  /// **'The corner of the toenail is growing into the skin'**
  String get ingrownNailLabel;

  /// images of ingrown nails
  ///
  /// In en, this message translates to:
  /// **'Click here to see images of ingrown toenails'**
  String get ingrownNailImages;

  /// images of ingrown nails
  ///
  /// In en, this message translates to:
  /// **'The edge of the nail is curving into the skin of the toe'**
  String get ingrownNailImage1;

  /// images of ingrown nails
  ///
  /// In en, this message translates to:
  /// **'The nail is curved into the skin; the surrounding skin is very red and swollen'**
  String get ingrownNailImage2;

  /// images of ingrown nails
  ///
  /// In en, this message translates to:
  /// **'Blood has dried where the nail has curved into the skin. There is redness and swelling spreading from the site; this toe might be infected'**
  String get ingrownNailImage3;

  /// prevention for ingrown nails header
  ///
  /// In en, this message translates to:
  /// **'Preventing ingrown nails'**
  String get ingrownNailPreventionHeader;

  /// prevention for ingrown nails
  ///
  /// In en, this message translates to:
  /// **'● Always cut your toenails with a proper nail clipper\n● Cut your nails in a straight line — it\'s OK if the corners of the nails are a bit longer\n● Do not round the nails as this can encourage the nail to curve\n● You can use a nail file to smooth out any sharp edges or corners\n● Avoid shoes or socks that are too tight'**
  String get ingrownNailPrevention;

  /// ingrown nail sx header
  ///
  /// In en, this message translates to:
  /// **'Ingrown nail symptoms'**
  String get ingrownNailSxHeader;

  /// ingrown nail sx
  ///
  /// In en, this message translates to:
  /// **'● Nails curving inwards ➰\n● Pain\n● Redness 🔴\n● Swelling\n● Ingrown toenails are at a high risk of becoming infected'**
  String get ingrownNailSx;

  /// tx for ingrown nail header
  ///
  /// In en, this message translates to:
  /// **'Ingrown nail treatment'**
  String get ingrownNailTxHeader;

  /// tx for ingrown nail
  ///
  /// In en, this message translates to:
  /// **'● Seek a medical professional as they can help lift the nail and remove the part that is growing into the toe\n● Clean the affected foot with warm water and mild soap every day'**
  String get ingrownNailTx;

  /// tx warning for ingrown nail
  ///
  /// In en, this message translates to:
  /// **'If you have diabetes, poor circulation, a weakened immune system or other health conditions, you may be at higher risk for skin infections'**
  String get ingrownNailWarning;

  /// laceration image 1 description
  ///
  /// In en, this message translates to:
  /// **'Cut is larger than 2 cm and deeper than 6 mm; visible subcutaneous tissue'**
  String get laceration1;

  /// laceration image 2 description
  ///
  /// In en, this message translates to:
  /// **'Wide cut edges that gapes open; visible subcutaneous tissue'**
  String get laceration2;

  /// laceration image 3 description
  ///
  /// In en, this message translates to:
  /// **'Cut has jagged edges and seems very deep'**
  String get laceration3;

  /// link to infection from other section
  ///
  /// In en, this message translates to:
  /// **'Click here to learn about signs of infection and how to prevent them'**
  String get linkToInfection;

  /// minor cut image 1 description
  ///
  /// In en, this message translates to:
  /// **'Very shallow and thin cut with smooth edges'**
  String get minorCuts1;

  /// minor cut image 2 description
  ///
  /// In en, this message translates to:
  /// **'Only the top layer of skin scraped off; no visible subcutaneous tissue, only minor bleeding'**
  String get minorCuts2;

  /// minor cut image 3 description
  ///
  /// In en, this message translates to:
  /// **'Only the top layer of skin is cut; wound is less than 6 mm deep'**
  String get minorCuts3;

  /// minor cut image 4 description
  ///
  /// In en, this message translates to:
  /// **'Cut edges are close together; the cut is not wide and not very deep'**
  String get minorCuts4;

  /// minor cut image 5 description
  ///
  /// In en, this message translates to:
  /// **'Wound is not very deep; no visible subcutaneous tissue, only minor bleeding'**
  String get minorCuts5;

  /// dialog box images for minor cuts
  ///
  /// In en, this message translates to:
  /// **'Click here to see images of cuts that do not need stitches'**
  String get minorCutsImages;

  /// header nail fungus
  ///
  /// In en, this message translates to:
  /// **'Nail fungus'**
  String get nailFungus;

  /// nail fungus header label
  ///
  /// In en, this message translates to:
  /// **'Infection of the nails caused by a fungus'**
  String get nailFungusLabel;

  /// definition nail fungus
  ///
  /// In en, this message translates to:
  /// **'Nail fungus is a problem of the nails caused by coming into contact with a small fungus (mushroom). It is very common and can be treated'**
  String get nailFungusDef;

  /// nail fungal infection sx
  ///
  /// In en, this message translates to:
  /// **'Nail fungus symptoms'**
  String get nailFungusSxHeader;

  /// nail fungal infection sx
  ///
  /// In en, this message translates to:
  /// **'● Nails look more yellow or brown 🟡🟤\n● Nail thickening\n● Nails that crack or break\n● The nail can detach from the nail bed\n● Might have a bad smell\n● Pain'**
  String get nailFungusSx;

  /// dialog box for nail fungus images
  ///
  /// In en, this message translates to:
  /// **'Click here to see images of nail fungus'**
  String get nailFungusImages;

  /// nail fungus image
  ///
  /// In en, this message translates to:
  /// **'Thicker nail, yellow in color, some redness & swelling around the nailbed'**
  String get nailFungusImage1;

  /// nail fungus image
  ///
  /// In en, this message translates to:
  /// **'Nails are yellowed and are very brittle and ragged'**
  String get nailFungusImage2;

  /// nail fungus image
  ///
  /// In en, this message translates to:
  /// **'Nail is discolored, visibly ragged. Some redness around the nailbed'**
  String get nailFungusImage3;

  /// nail fungus image
  ///
  /// In en, this message translates to:
  /// **'Nails are discolored, visibly deformed and very brittle'**
  String get nailFungusImage4;

  /// nail fungus tx header
  ///
  /// In en, this message translates to:
  /// **'Treatment for nail fungus'**
  String get nailFungusTxHeader;

  /// nail fungus tx
  ///
  /// In en, this message translates to:
  /// **'There are antifungal creams that exist for mild cases of nail fungus. Always ask the pharmacist for help\n\nFor more severe cases, seek a doctor'**
  String get nailFungusTx;

  /// prevention step for nail fungus header
  ///
  /// In en, this message translates to:
  /// **'Preventing nail fungus'**
  String get nailFungusPreventionHeader;

  /// prevention step for nail fungus
  ///
  /// In en, this message translates to:
  /// **'● Keep feet dry and clean\n● Change socks often 🧦\n● You can use desiccating foot powders to help keep feet dry\n● When using shared showers, try to wear sandals or flip-flops 🩴\n● Do not share nail clippers'**
  String get nailFungusPrevention;

  /// steps if they catch nail fungus
  ///
  /// In en, this message translates to:
  /// **'● Try to keep feet clean and dry\n● Seek medical help, especially if you notice bleeding around the nail 🩸 or if walking becomes painful'**
  String get nailFungusPreventionWarning;

  /// dialog box for normal vs abnormal discharge
  ///
  /// In en, this message translates to:
  /// **'Click here to see images of wound discharge'**
  String get normalDischarge;

  /// normal wound info
  ///
  /// In en, this message translates to:
  /// **'Normal wounds may have some redness and pain.\nThey might also have some discharge that is clear, light yellow or light pink'**
  String get normalWound;

  /// general skin maintenance header
  ///
  /// In en, this message translates to:
  /// **'How to protect your skin'**
  String get skinGeneralHeader;

  /// general skin maintenance
  ///
  /// In en, this message translates to:
  /// **'● Keep skin washed and dry \n● Always protect any wounds with bandages 🩹 and look at them every day for signs of infection\n● Use moisturizers or just simply Vaseline to keep skin moist 🧴\n● Stay hydrated by drinking water 💧\n● Try to eat well, this helps you keep healthy skin'**
  String get skinGeneral;

  /// general skin maintenance — summer header
  ///
  /// In en, this message translates to:
  /// **'How to protect your skin during the summer'**
  String get skinGeneralSummerHeader;

  /// general skin maintenance — summer
  ///
  /// In en, this message translates to:
  /// **'● Use hats 🧢, loose light-colored clothing, and stay in the shade\n● Wear sunscreen every day if you can, even if you have dark skin\n● Use sunscreen with an SPF of 30 or more. You need an amount of cream about the size of a 2\$ coin to cover your face\n● Reapply sunscreen at least every 2 hours 🧴☀️\n● Stay hydrated by drinking water 💧'**
  String get skinGeneralSummer;

  /// general skin maintenance — winter header
  ///
  /// In en, this message translates to:
  /// **'How to protect your skin during the winter'**
  String get skinGeneralWinterHeader;

  /// general skin maintenance — winter
  ///
  /// In en, this message translates to:
  /// **'● Wear multiple layers of clothing and always keep your fingers ✋, ears 👂, and nose 👃 covered\n● Avoid any wet clothing\n● Moisturizers or Vaseline can help keep your skin protected and avoid dryness\n● It is possible to get a sunburn during the winter, so wear sunscreen on your face if it is sunny\n● When it is very cold (–15 °C or less), find shelter\n● Eat well, avoid alcohol 🍺🍷❌'**
  String get skinGeneralWinter;

  /// general feet maintenance header
  ///
  /// In en, this message translates to:
  /// **'How to protect your feet'**
  String get feetGeneralHeader;

  /// general feet maintenance
  ///
  /// In en, this message translates to:
  /// **'● Wash your feet daily with warm water and mild soap\n● Keep your feet nice and dry, especially between your toes\n● Apply moisturizing lotion to your feet\n● Wear shoes and socks that fit you well — not too big, not too tight\n● Inspect your feet every day for any wounds'**
  String get feetGeneral;

  /// general nails maintenance header
  ///
  /// In en, this message translates to:
  /// **'How to keep your toenails healthy'**
  String get nailGeneralHeader;

  /// general nails maintenance
  ///
  /// In en, this message translates to:
  /// **'● Toe nails should never be too long — they should not go beyond the point of your toes\n● Use proper nail cutters to cut nails\n● Never share nail cutting tools\n● Cut nails in a straight line, do not round them\n● Use a nail file to smooth any sharp edges'**
  String get nailGeneral;

  /// title header for sunburns
  ///
  /// In en, this message translates to:
  /// **'Sunburns'**
  String get sunburn;

  /// label header for sunburns
  ///
  /// In en, this message translates to:
  /// **'Skin damage from the sun'**
  String get sunburnLabel;

  /// definition sunburns
  ///
  /// In en, this message translates to:
  /// **'Sunburns happen when you spend too long in the sun without any protection. The ultraviolet rays cause damage to the skin'**
  String get sunburnDef;

  /// sunburn sx header
  ///
  /// In en, this message translates to:
  /// **'Sunburn symptoms'**
  String get sunburnSxHeader;

  /// sunburn sx
  ///
  /// In en, this message translates to:
  /// **'● Redness 🔴\n● Skin is hot to the touch 🔥\n● Pain\n● Symptoms usually develop several hours after being in the sun and can last a few days\n● After a few days, skin will begin to peel, this is expected'**
  String get sunburnSx;

  /// severe sunburn sx
  ///
  /// In en, this message translates to:
  /// **'In cases of severe sunburn, there may be blistering, severe pain or fever. Seek medical attention'**
  String get severeSunburnSx;

  /// dialog box for sunburn images
  ///
  /// In en, this message translates to:
  /// **'Click here to see images of sunburns'**
  String get sunburnImages;

  /// images of sunburns
  ///
  /// In en, this message translates to:
  /// **'Skin is very red'**
  String get sunburnImage1;

  /// images of sunburns
  ///
  /// In en, this message translates to:
  /// **'Skin is red with small fluid-filled blisters'**
  String get sunburnImage2;

  /// images of sunburns
  ///
  /// In en, this message translates to:
  /// **'Very severe sunburn with significant blisters and redness - this requires medical care'**
  String get sunburnImage3;

  /// images of sunburns
  ///
  /// In en, this message translates to:
  /// **'Sunburn that is a few days old, skin has begun peeling'**
  String get sunburnImage4;

  /// images of sunburns
  ///
  /// In en, this message translates to:
  /// **'Healed sunburn with peeling skin'**
  String get sunburnImage5;

  /// sunburn tx header
  ///
  /// In en, this message translates to:
  /// **'Treatment for sunburns'**
  String get sunburnTxHeader;

  /// sunburn tx
  ///
  /// In en, this message translates to:
  /// **'● Stay out of the sun\n● Apply cool compresses to affected skin or take a cold shower 🚿\n● Never apply ice directly to the skin 🧊❌\n● Ask the pharmacist to find products that can help soothe sunburns\n● Never scratch or pick the affected skin'**
  String get sunburnTx;

  /// header for sunburn prevention
  ///
  /// In en, this message translates to:
  /// **'Preventing sunburns'**
  String get sunburnPreventionHeader;

  /// prevention step for sunburns
  ///
  /// In en, this message translates to:
  /// **'● Avoid the sun and stay in the shade, especially when the sun\'s light is the strongest (between 10 AM to 4 PM)\n● Wear a wide-brimmed hat and light-colored long sleeves to cover your skin 🧢👕👖\n● Apply sunscreen with an SPF of 30 or more to exposed skin. Use an amount of cream about the size of a 2\$ coin to cover your face\n● Reapply sunscreen at least every 2 hours 🧴☀️'**
  String get sunburnPrevention;

  /// header for sx of infections
  ///
  /// In en, this message translates to:
  /// **'Signs of infection'**
  String get sxOfInfectionHeader;

  /// sx of infections
  ///
  /// In en, this message translates to:
  /// **'● Skin is red or darker than normal 🔴\n● Swelling\n● Warm feeling 🔥\n● Pain\n● Bad smell\n● Visible pus (thick, yellow, greenish or gray fluid)\n● Fever 🤒'**
  String get sxOfInfection;

  /// infection definition
  ///
  /// In en, this message translates to:
  /// **'An infection happens when bacteria (germs) get into a wound. This can be dangerous to your health'**
  String get whatInfection;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
