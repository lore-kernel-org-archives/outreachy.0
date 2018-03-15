X-GM-THRID: 6533243345849810944
X-Received: by 10.28.190.15 with SMTP id o15mr741336wmf.18.1521142361463;
        Thu, 15 Mar 2018 12:32:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.182.17 with SMTP id f17ls1475646wre.14.gmail; Thu, 15 Mar
 2018 12:32:40 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvKd4ohfkzb8AUxKVLWdv8aPI7efl9lhkdme0/Ce3eh8vt1omaR+lCluj7GUCar2ZXtZFRS
X-Received: by 10.223.134.181 with SMTP id 50mr1094755wrx.15.1521142360479;
        Thu, 15 Mar 2018 12:32:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521142360; cv=none;
        d=google.com; s=arc-20160816;
        b=x5Gz7jltNIwe9cSrkz+7baGEInwc3EmnVsxhPqJpOAhCdiVg5wvB738Q0UMGrf3m81
         8YJjjbkatI7uSBRT29Z7mD9x6ib4yIUkP7aTIgbKiXJNpFpEgmOu/0RKvLvROBfdNoDv
         L1OBQL7ItLO0NkR09amrNvZCz1ICBZiNzpjT+juZ9cAzJLqg2sloSOX/jco8GWoTcAh0
         apjHimvb+GGkjy2JmU4hMvh7uOUJT1Zx44HJn74GAqxLv/rWwP9JqpvwkNObKvtXvXUB
         1dsLYHTTiJh+tUdo63bXpqF3+i3CLePVrUTmOv5iuw5+vybZ/e3hxYt/aiu2fg4QLHfU
         Vvrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=DoyzCZtc3wvLfoA/uOyNB/oNDTy0E6r1yWUGsBnlh/A=;
        b=hw/dbsoW+bSt5f0aecZOsS+QI/EFPodH42FvKk8eNfjh80neWCcBd5IdZQ42kEpTrg
         IlghrtKYeiaS15CLXTULqB0SjxNnbz9Tpe47hkaHApipIPraiHW5RjYOLnYO+t7uZ9lc
         gPUrZHSFhDXWuKwkFB22/s8iQjsv0hIu5C+VlyRc2pxIKWbs/WJXaE7vIPC3izdZFq22
         +9sNj3tr4vNKnC8InxsvwoPlJwnmIj3PFaQ8WZaDJRF86uKXfJg9Bgg2kiA3z28ltZe5
         +lF1z6Ne8dNlktSKFooJqrhtQm55cHwEqN3emYgdY8ImaDh2EQLdQFvEZ6n/xC7SqEtR
         zYaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d4si192227wmh.2.2018.03.15.12.32.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Mar 2018 12:32:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,312,1517871600"; 
   d="scan'208";a="318253528"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Mar 2018 20:32:40 +0100
Date: Thu, 15 Mar 2018 20:32:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    William Hubbs <w.d.hubbs@gmail.com>, 
    Christopher Brannon <chris@the-brannons.com>, kirk@reisers.ca, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Remove else after
 return
In-Reply-To: <CAC4++KCjSxSvzW_bhZ-+UHW=hhfSu=kZyknD2gkpEKyM_=iAxw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1803152029420.3302@hadrien>
References: <1521139235-6133-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <alpine.DEB.2.20.1803151952070.3302@hadrien> <CAC4++KCjSxSvzW_bhZ-+UHW=hhfSu=kZyknD2gkpEKyM_=iAxw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 16 Mar 2018, Nishka Dasgupta wrote:

> As far as I understand it, there was an isolated "if" statement at the
> beginning, then 3 "if-else" statements, then an "else" statement and
> then a block of code. Of these, the only places where I did not add
> the block of code are the "else" statement (because it returns on its
> own), the "if" statement just before that (it also returns) and the
> first isolated "if" statement. In other places I cut and paste the
> code that used to be below the "else". Should I also have done the
> same below "help_init()" of the first "if" statement?

OK.  I expected something like:

  if (...) {
    ...
  }
- else
-   foo();
+ foo();

But I see that the code has a lot of returns, so that would not be
appropriate here.

But the new code is longer and has more code duplication, so I think that
the code was better off the way it was.

julia

>
> Thanking you,
> Nishka Dasgupta
>
> On Fri, Mar 16, 2018 at 12:23 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Thu, 15 Mar 2018, Nishka Dasgupta wrote:
> >
> >> Remove else after return and modify code accordingly. Issue found with
> >> checkpatch.
> >>
> >> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> >> ---
> >>  drivers/staging/speakup/keyhelp.c | 82 +++++++++++++++++++++++----------------
> >>  1 file changed, 48 insertions(+), 34 deletions(-)
> >>
> >> diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
> >> index 5f1bda3..020e0ea 100644
> >> --- a/drivers/staging/speakup/keyhelp.c
> >> +++ b/drivers/staging/speakup/keyhelp.c
> >> @@ -153,6 +153,21 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
> >>                       return 1;
> >>               }
> >>               cur_item = letter_offsets[ch - 'a'];
> >> +             name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
> >> +             func = funcvals[cur_item];
> >> +             synth_printf("%s", name);
> >> +             if (key_offsets[func] == 0) {
> >> +                     synth_printf(" %s\n", spk_msg_get(MSG_IS_UNASSIGNED));
> >> +                     return 1;
> >> +             }
> >> +             p_keys = key_data + key_offsets[func];
> >> +             for (n = 0; p_keys[n]; n++) {
> >> +                     val = p_keys[n];
> >> +                     if (n > 0)
> >> +                             synth_printf("%s ", spk_msg_get(MSG_DISJUNCTION));
> >> +                     say_key(val);
> >> +             }
> >> +             return 1;
> >
> > Are you sure this is ok?  If you are removing an else and ajusting the
> > indentation of the code, I would expect that each hunk would contain
> > removed code, but this one does not.
> >
> > julia
> >
> >
> >>       } else if (type == KT_CUR) {
> >>               if (ch == 0 &&
> >>                   (MSG_FUNCNAMES_START + cur_item + 1) <= MSG_FUNCNAMES_END)
> >> @@ -161,49 +176,48 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
> >>                       cur_item--;
> >>               else
> >>                       return -1;
> >> +             name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
> >> +             func = funcvals[cur_item];
> >> +             synth_printf("%s", name);
> >> +             if (key_offsets[func] == 0) {
> >> +                     synth_printf(" %s\n", spk_msg_get(MSG_IS_UNASSIGNED));
> >> +                     return 1;
> >> +             }
> >> +             p_keys = key_data + key_offsets[func];
> >> +             for (n = 0; p_keys[n]; n++) {
> >> +                     val = p_keys[n];
> >> +                     if (n > 0)
> >> +                             synth_printf("%s ", spk_msg_get(MSG_DISJUNCTION));
> >> +                     say_key(val);
> >> +             }
> >> +             return 1;
> >>       } else if (type == KT_SPKUP && ch == SPEAKUP_HELP &&
> >>                  !spk_special_handler) {
> >>               spk_special_handler = spk_handle_help;
> >>               synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
> >>               build_key_data(); /* rebuild each time in case new mapping */
> >>               return 1;
> >> -     } else {
> >> -             name = NULL;
> >> -             if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
> >> -                     synth_printf("%s\n",
> >> -                                  spk_msg_get(MSG_KEYNAMES_START + key - 1));
> >> -                     return 1;
> >> -             }
> >> -             for (i = 0; funcvals[i] != 0 && !name; i++) {
> >> -                     if (ch == funcvals[i])
> >> -                             name = spk_msg_get(MSG_FUNCNAMES_START + i);
> >> -             }
> >> -             if (!name)
> >> -                     return -1;
> >> -             kp = spk_our_keys[key] + 1;
> >> -             for (i = 0; i < nstates; i++) {
> >> -                     if (ch == kp[i])
> >> -                             break;
> >> -             }
> >> -             key += (state_tbl[i] << 8);
> >> -             say_key(key);
> >> -             synth_printf(spk_msg_get(MSG_KEYDESC), name);
> >> -             synth_printf("\n");
> >> -             return 1;
> >>       }
> >> -     name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
> >> -     func = funcvals[cur_item];
> >> -     synth_printf("%s", name);
> >> -     if (key_offsets[func] == 0) {
> >> -             synth_printf(" %s\n", spk_msg_get(MSG_IS_UNASSIGNED));
> >> +     name = NULL;
> >> +     if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
> >> +             synth_printf("%s\n",
> >> +                          spk_msg_get(MSG_KEYNAMES_START + key - 1));
> >>               return 1;
> >>       }
> >> -     p_keys = key_data + key_offsets[func];
> >> -     for (n = 0; p_keys[n]; n++) {
> >> -             val = p_keys[n];
> >> -             if (n > 0)
> >> -                     synth_printf("%s ", spk_msg_get(MSG_DISJUNCTION));
> >> -             say_key(val);
> >> +     for (i = 0; funcvals[i] != 0 && !name; i++) {
> >> +             if (ch == funcvals[i])
> >> +                     name = spk_msg_get(MSG_FUNCNAMES_START + i);
> >> +     }
> >> +     if (!name)
> >> +             return -1;
> >> +     kp = spk_our_keys[key] + 1;
> >> +     for (i = 0; i < nstates; i++) {
> >> +             if (ch == kp[i])
> >> +                     break;
> >>       }
> >> +     key += (state_tbl[i] << 8);
> >> +     say_key(key);
> >> +     synth_printf(spk_msg_get(MSG_KEYDESC), name);
> >> +     synth_printf("\n");
> >>       return 1;
> >>  }
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521139235-6133-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

