abstract class RepoNameRepository {
  //Future<ModelName> getModelData(String value);
  Future<String> getData(String value);
  Future<bool> getStatus(String check);
}