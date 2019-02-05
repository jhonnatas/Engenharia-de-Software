module ControllerHelpers
    def log_in(admin)
        warden = request.env[‘warden’]
        allow(warden).to receive(:authenticate!).and_return(admin)
        allow(controller).to receive(:current_admin).and_return(admin)
    end
end