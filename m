X-GM-THRID: 6393343309495926784
X-Received: by 10.46.82.157 with SMTP id n29mr751243lje.29.1488566458638;
        Fri, 03 Mar 2017 10:40:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.221 with SMTP id e90ls723612lji.30.gmail; Fri, 03 Mar
 2017 10:40:57 -0800 (PST)
X-Received: by 10.46.82.157 with SMTP id n29mr751240lje.29.1488566457954;
        Fri, 03 Mar 2017 10:40:57 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b186si411440wme.1.2017.03.03.10.40.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:40:57 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,238,1484002800"; 
   d="scan'208";a="215504144"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2017 19:40:56 +0100
Date: Fri, 3 Mar 2017 19:40:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, 
    outreachy-kernel@googlegroups.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    speakup@linux-speakup.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: speakup: fixes braces
 {} should be used on all arms of this statement
In-Reply-To: <20170303183707.14830-7-arushisinghal19971997@gmail.com>
Message-ID: <alpine.DEB.2.20.1703031940410.2133@hadrien>
References: <20170303183707.14830-1-arushisinghal19971997@gmail.com> <20170303183707.14830-7-arushisinghal19971997@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 4 Mar 2017, Arushi Singhal wrote:

> This patch fixes the checks reported by checkpatch.pl
> for braces {} should be used on all arms of this statement.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/main.c | 29 +++++++++++++++++++----------
>  1 file changed, 19 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 7915e75664f4..6179e0aafa25 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -640,8 +640,9 @@ static void say_prev_word(struct vc_data *vc)
>  				break;
>  			spk_y--;
>  			spk_x = vc->vc_cols - 1;
> -		} else
> +		} else{

else needs a space after it.

julia

>  			spk_x--;
> +		}
>  		spk_pos -= 2;
>  		ch = (char)get_char(vc, (u_short *)spk_pos, &temp);
>  		if (ch == SPACE || ch == 0)
> @@ -694,8 +695,9 @@ static void say_next_word(struct vc_data *vc)
>  			spk_y++;
>  			spk_x = 0;
>  			edge_said = edge_right;
> -		} else
> +		} else {
>  			spk_x++;
> +		}
>  		spk_pos += 2;
>  		last_state = state;
>  	}
> @@ -722,8 +724,9 @@ static void spell_word(struct vc_data *vc)
>  				spk_pitch_shift++;
>  			else	/* synth has no pitch */
>  				last_cap = spk_str_caps_stop;
> -		} else
> +		} else {
>  			str_cap = spk_str_caps_stop;
> +		}
>  		if (str_cap != last_cap) {
>  			synth_printf("%s", str_cap);
>  			last_cap = str_cap;
> @@ -1331,8 +1334,9 @@ static int speakup_allocate(struct vc_data *vc)
>  		if (!speakup_console[vc_num])
>  			return -ENOMEM;
>  		speakup_date(vc);
> -	} else if (!spk_parked)
> +	} else if (!spk_parked) {
>  		speakup_date(vc);
> +	}
>
>  	return 0;
>  }
> @@ -1385,8 +1389,9 @@ static void read_all_doc(struct vc_data *vc)
>  		prev_cursor_track = cursor_track;
>  	cursor_track = read_all_mode;
>  	spk_reset_index_count(0);
> -	if (get_sentence_buf(vc, 0) == -1)
> +	if (get_sentence_buf(vc, 0) == -1) {
>  		kbd_fakekey2(vc, RA_DOWN_ARROW);
> +	}
>  	else {
>  		say_sentence_num(0, 0);
>  		synth_insert_next_index(0);
> @@ -1434,8 +1439,9 @@ static void handle_cursor_read_all(struct vc_data *vc, int command)
>  			if (!say_sentence_num(sentcount + 1, 1)) {
>  				sn = 1;
>  				spk_reset_index_count(sn);
> -			} else
> +			} else {
>  				synth_insert_next_index(0);
> +			}
>  			if (!say_sentence_num(sn, 0)) {
>  				kbd_fakekey2(vc, RA_FIND_NEXT_SENT);
>  				return;
> @@ -1464,8 +1470,9 @@ static void handle_cursor_read_all(struct vc_data *vc, int command)
>  		rv = get_sentence_buf(vc, 0);
>  		if (rv == -1)
>  			read_all_doc(vc);
> -		if (rv == 0)
> +		if (rv == 0) {
>  			kbd_fakekey2(vc, RA_FIND_NEXT_SENT);
> +		}
>  		else {
>  			say_sentence_num(1, 0);
>  			synth_insert_next_index(0);
> @@ -2162,10 +2169,11 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
>  		if (type == KT_SPEC && value == 1) {
>  			value = '\n';
>  			type = KT_LATIN;
> -		} else if (type == KT_LETTER)
> +		} else if (type == KT_LETTER) {
>  			type = KT_LATIN;
> -		else if (value == 0x7f)
> +		} else if (value == 0x7f) {
>  			value = 8;	/* make del = backspace */
> +		}
>  		ret = (*spk_special_handler) (vc, type, value, keycode);
>  		spk_close_press = 0;
>  		if (ret < 0)
> @@ -2259,8 +2267,9 @@ static int vt_notifier_call(struct notifier_block *nb,
>  		speakup_deallocate(vc);
>  		break;
>  	case VT_WRITE:
> -		if (param->c == '\b')
> +		if (param->c == '\b') {
>  			speakup_bs(vc);
> +		}
>  		else if (param->c < 0x100) {
>  			char d = param->c;
>
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170303183707.14830-7-arushisinghal19971997%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

