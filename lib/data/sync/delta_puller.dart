
import '../repositories/family_repository.dart';
import '../repositories/member_repository.dart';
import '../repositories/answers_repository.dart';

class DeltaPuller {
  DeltaPuller(this.familyRepo, this.memberRepo, this.answerRepo);
  final FamilyRepository familyRepo;
  final MemberRepository memberRepo;
  final AnswerRepository answerRepo;

  Future<int> pullAll() async {
    var total = 0;
    total += await familyRepo.pullDelta();
    total += await memberRepo.pullDelta();
    total += await answerRepo.pullFamilyAnswerDelta();
    total += await answerRepo.pullMultiAnswerDelta();
    return total;
  }
}
