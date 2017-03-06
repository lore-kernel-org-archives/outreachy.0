X-GM-THRID: 6394100888766513152
X-Received: by 10.25.24.65 with SMTP id o62mr1777631lfi.8.1488808224972;
        Mon, 06 Mar 2017 05:50:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.73 with SMTP id y9ls1411086ljd.8.gmail; Mon, 06 Mar 2017
 05:50:24 -0800 (PST)
X-Received: by 10.25.79.23 with SMTP id d23mr1824338lfb.27.1488808224514;
        Mon, 06 Mar 2017 05:50:24 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e72si15682wma.0.2017.03.06.05.50.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 05:50:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,253,1484002800"; 
   d="scan'208";a="215736684"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2017 14:50:23 +0100
Date: Mon, 6 Mar 2017 14:50:11 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, w.d.hubbs@gmail.com, 
    chris@the-brannons.com, kirk@reisers.ca, samuel.thibault@ens-lyon.org, 
    gregkh@linuxfoundation.org, diaconita.tamara@gmail.com
Subject: Re: [Outreachy kernel] Re: [PATCH 3/3] staging:speakup:keyhelp.c:
 Remove unnecessary else
In-Reply-To: <4efe0441-12da-4574-bd58-0a5a95af2977@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703061449490.3078@hadrien>
References: <20170305193701.20390-1-diaconita.tamara@gmail.com> <ae948b29-c3d0-40d3-94a0-31df90500e76@googlegroups.com> <alpine.DEB.2.20.1703061237370.3078@hadrien> <4efe0441-12da-4574-bd58-0a5a95af2977@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-2120630640-1488808212=:3078"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2120630640-1488808212=:3078
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 6 Mar 2017, Tamara Diaconita wrote:

> Thank you for your explanations!
> Should I resend the patch set without this patch?

OK

julia

>
> luni, 6 martie 2017, 13:41:29 UTC+2, Julia Lawall a scris:
>
>
>       On Mon, 6 Mar 2017, Tamara Diaconita wrote:
>
>       > Did I do something wrong? In this case I see that the if
>       statement finish
>       > with a return.
>
>       The structure is complex is this case.  For a simpler example,
>       suppose you
>       have
>
>       if (x)
>         print "hello"
>       else if (y)
>         return;
>       else print "goodbye"
>
>       The original program prints hello or goodbye (or nothing), but
>       not both.
>       If you remove the final else, it may print hello goodbye.  The
>       structure
>       of your code is like this.  The KT_LATIN and KT_CUR cases might
>       not
>       return.
>
>       Chckpatch just looks at very local structure.  It doesn't follow
>       the
>       entire control flow, so it can have false positives like this.
>
>       julia
>
>       >
>       > duminică, 5 martie 2017, 21:37:05 UTC+2, Tamara Diaconita a
>       scris:
>       >       Fixed the checkpath.pl WARNING:
>       >       Else is not generally useful after a break return.
>       >
>       >       Deleted the 'else' structure.
>       >       Deleted extra tabs which remained after the 'else'
>       structure was
>       >       removed.
>       >
>       >       Signed-off-by: Tamara Diaconita <diaconit...@gmail.com>
>       >       ---
>       >        drivers/staging/speakup/keyhelp.c | 44
>       >       +++++++++++++++++++--------------------
>       >        1 file changed, 22 insertions(+), 22 deletions(-)
>       >
>       >       diff --git a/drivers/staging/speakup/keyhelp.c
>       >       b/drivers/staging/speakup/keyhelp.c
>       >       index 2ef7370..0e0efc46 100644
>       >       --- a/drivers/staging/speakup/keyhelp.c
>       >       +++ b/drivers/staging/speakup/keyhelp.c
>       >       @@ -176,30 +176,30 @@ int spk_handle_help(struct vc_data
>       *vc,
>       >       u_char type, u_char ch, u_short key)
>       >                        synth_printf("%s\n",
>       >       spk_msg_get(MSG_HELP_INFO));
>       >                        build_key_data(); /* rebuild each time
>       in case
>       >       new mapping */
>       >                        return 1;
>       >       -        } else {
>       >       -                name = NULL;
>       >       -                if ((type != KT_SPKUP) && (key > 0) &&
>       (key <=
>       >       num_key_names)) {
>       >       -                        synth_printf("%s\n",
>       >       -                                    
>       >       spk_msg_get(MSG_KEYNAMES_START + key - 1));
>       >       -                        return 1;
>       >       -                }
>       >       -                for (i = 0; funcvals[i] != 0 && !name;
>       i++) {
>       >       -                        if (ch == funcvals[i])
>       >       -                                name =
>       >       spk_msg_get(MSG_FUNCNAMES_START + i);
>       >       -                }
>       >       -                if (!name)
>       >       -                        return -1;
>       >       -                kp = spk_our_keys[key] + 1;
>       >       -                for (i = 0; i < nstates; i++) {
>       >       -                        if (ch == kp[i])
>       >       -                                break;
>       >       -                }
>       >       -                key += (state_tbl[i] << 8);
>       >       -                say_key(key);
>       >       -                synth_printf(spk_msg_get(MSG_KEYDESC),
>       name);
>       >       -                synth_printf("\n");
>       >       +        }
>       >       +        name = NULL;
>       >       +        if ((type != KT_SPKUP) && (key > 0) && (key <=
>       >       num_key_names)) {
>       >       +                synth_printf("%s\n",
>       >       +                            
>       spk_msg_get(MSG_KEYNAMES_START +
>       >       key - 1));
>       >                        return 1;
>       >                }
>       >       +        for (i = 0; funcvals[i] != 0 && !name; i++) {
>       >       +                if (ch == funcvals[i])
>       >       +                        name =
>       spk_msg_get(MSG_FUNCNAMES_START
>       >       + i);
>       >       +        }
>       >       +        if (!name)
>       >       +                return -1;
>       >       +        kp = spk_our_keys[key] + 1;
>       >       +        for (i = 0; i < nstates; i++) {
>       >       +                if (ch == kp[i])
>       >       +                        break;
>       >       +                }
>       >       +        key += (state_tbl[i] << 8);
>       >       +        say_key(key);
>       >       +        synth_printf(spk_msg_get(MSG_KEYDESC), name);
>       >       +        synth_printf("\n");
>       >       +        return 1;
>       >       +
>       >                name = spk_msg_get(MSG_FUNCNAMES_START +
>       cur_item);
>       >                func = funcvals[cur_item];
>       >                synth_printf("%s", name);
>       >       --
>       >       2.9.3
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups
>       > "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an
>       > email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/ae948b29-c3d0-40d3-
>       94a0-
>       > 31df90500e76%40googlegroups.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/4efe0441-12da-4574-bd58-
> 0a5a95af2977%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-2120630640-1488808212=:3078--

