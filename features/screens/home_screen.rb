class Home < Appium::Driver

  # ================================= SCREEN ======================================    
      def initialize
          @btnNext = "btNext"
          @pagenews = "imgBackground"
          @btnSkip  = "btSkip"
          @logHome = "icLogo"
          @desc_news = "txDescription"
      end

  # ================================ METHODS ======================================

      def proximo_btn
        id(@btnNext).click
      end

      def final_page
        id(@pagenews)
      end

      def pular_news
        id(@btnSkip).click
      end

      def log_inicio
	    id(@logHome)
      end

      def descricao
        id(@desc_news)
      end

end
