class ReportPdf < Prawn::Document
    def initialize(report)
        super()

        @reports = Report.find(report.id(:reporttype, :img, :petname, :species,
            :gender, :color, :descriptions, :address,:city, :date, :phone, :email))
       report_id
    end  

    def report_id
    table report_id_all
    end 
    def report_id_all
        [["Img","Reporttype", "Petname", "Species","Gender", "Address", "Description", "Phone", "Email" ]] +
        @reports.map do |report|
        [  report.img,
            report.reporttype,
            report.petname, 
           report.species,
           report.gender,
            report.address,
           report.description,
           report.phone,
            report.email]
        end
    end
end

