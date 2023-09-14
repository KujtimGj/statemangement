class CompletedServiceModel{
  String ServiceID,id,staffUsername,staffEmail, clientUsername,clientEmail;
  int CreditUsed;

  CompletedServiceModel({required this.ServiceID, required this.CreditUsed, required this.id,required this.clientEmail, required this.clientUsername, required this.staffEmail, required this.staffUsername });


  factory CompletedServiceModel.fromJson(Map<String, dynamic> fromJson){
    return CompletedServiceModel(
        ServiceID: fromJson['ServiceID'],
        CreditUsed: fromJson['CreditUsed'],
        id: fromJson['_id'],
        clientEmail:fromJson['client']['clientEmail'],
        clientUsername: fromJson['client']['clientUsername'],
        staffEmail: fromJson['staff']['staffEmail'],
        staffUsername:fromJson['staff'][' staffUsername']
    );
  }
}