quest protected_letter begin
	state start begin
		when login or levelup with pc.get_level() >= 15 begin
			set_state(protected_player)
		end
	end

	state protected_player begin
		when letter begin
			send_letter(" Õ„«Ì… «·‘Œ’Ì… ")
		end
		
		when button or info begin
			say_title(" [‰Ÿ«„ «·Õ„«Ì…]")
			say(" 1- ≈–« ﬂ‰  „Õ„Ì ° ·« Ì„ﬂ‰ﬂ ≈—”«· ÿ·» „»«—“… ")
			say(" 2- ≈–« ﬂ‰  „Õ„Ì ° ·« Ì„ﬂ‰ﬂ › Õ Õ— .")
			say(" 3- ≈–« ﬂ‰  „Õ„Ì ° ·« Ì„ﬂ‰ ·√Õœ › Õ Õ— ⁄·Ìﬂ .")
			say(" 4- ≈–« ﬂ‰  „Õ„Ì ° ·« Ì„ﬂ‰ ·«Õœ ≈—”«· ÿ·» „»«—“… ·ﬂ .")
			say(" 5- ≈–« ﬂ‰  „Õ„Ì ° ”Ì„ﬂ‰ ··ÊÕÊ‘ „Ê«ÃÂ ﬂ ÊÌ„ﬂ‰ﬂ „Ê«ÃÂ Â„ .")
			say(" 6- ≈–« ﬂ‰   —Ìœ √‰  ’»Õ „Õ„Ì« ° ÌÃ» √‰ ÌﬂÊ‰ „” Ê«ﬂ «⁄·Ï „‰ 15 .")
			say(" 7- ≈–« ﬂ‰   —Ìœ √‰  ’»Õ „Õ„Ì« ° ÌÃ» √‰ ·« ﬂÊ‰ „Ì « .")
			say(" 8- ≈–« ﬂ‰   —Ìœ √‰  ’»Õ „Õ„Ì« ° ÌÃ» «‰ ·« ﬂÊ‰ ›Ì „»«—“… .")
			say(" 9- ≈–« ﬂ‰   —Ìœ √‰  ’»Õ „Õ„Ì« ° ÌÃ» «‰ ·« ﬂÊ‰ ›Ì Ê÷⁄ «·Õ— .")
			local s = select("  ›⁄Ì· «·Õ„«Ì… ", " ≈“«·… «·Õ„«Ì… ", " ≈€·«ﬁ ‰«›–… «·Õ„«Ì… ")
				if s == 1 then
					command("protected_true")
				elseif s == 2 then
					command("protected_false")
			end
		end
	end
end
