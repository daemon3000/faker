import 'address.dart';
import 'company.dart';
import 'conference.dart';
import 'currency.dart';
import 'food.dart';
import 'guid.dart';
import 'image.dart';
import 'internet.dart';
import 'job.dart';
import 'person.dart';
import 'providers/base_providers.dart';
import 'random_generator.dart';
import 'sport.dart';
import 'phone.dart';
import 'date.dart';
import 'lorem.dart';
import 'providers/default_providers.dart';
import 'providers/fa_providers.dart';

final Faker faker = Faker.withGenerator(random);

class Faker {
  final Address address;
  final Conference conference;
  final Company company;
  final Currency currency;
  final Food food;
  final Guid guid;
  final Image image;
  final Internet internet;
  final Job job;
  final Lorem lorem;
  final Person person;
  final Sport sport;
  final Date date;
  final Phone phone;
  final RandomGenerator randomGenerator;

  Faker.withGenerator(RandomGenerator random, {FakerDataProvider provider})
      : address = Address(Person(random)),
        conference = Conference(random),
        company = Company(Person(random)),
        currency = Currency(random),
        food = Food(random),
        guid = Guid(random),
        image = Image(),
        internet = Internet(random),
        job = Job(random),
        lorem = Lorem(random, provider?.loremDataProvider ?? DefaultLoremDataProvider()),
        person = Person(random),
        sport = Sport(random),
        date = Date(random),
        phone = Phone(random),
        randomGenerator = random;

  factory Faker({int seed, FakerDataProvider provider}) => Faker.withGenerator(RandomGenerator(seed: seed), provider: provider);
}

class FakerDataProvider {
  final LoremDataProvider loremDataProvider;

  FakerDataProvider({this.loremDataProvider});
}

class FakerDataProviderFa extends FakerDataProvider {
  FakerDataProviderFa() : super(loremDataProvider: LoremDataProviderFa());
}

