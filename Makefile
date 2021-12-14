help:
	@echo ""
	@echo "usage: make COMMAND"
	@echo ""
	@echo "-- Git Operation --"
	@echo "  develop issue=1        allow-empty commit & github push & qr request"

develop:
	@git checkout -b feature-$(issue) && \
	git commit --allow-empty -m "開発開始" && \
	git push origin feature-$(issue) && \
	gh pr create -b "close #$(issue)" -a @me -w