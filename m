X-GM-THRID: 6533243345849810944
X-Received: by 10.107.135.96 with SMTP id j93mr4284530iod.93.1521140570430;
        Thu, 15 Mar 2018 12:02:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.38.203 with SMTP id m194ls997842iom.5.gmail; Thu, 15 Mar
 2018 12:02:49 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvjrbRB/mafuN4qoqmjXn+p40PQcQQ+HQi3xlOMcyAJ9UuqdN9p6C2Jn7UZ7d5Ub61zaST+
X-Received: by 10.107.13.82 with SMTP id 79mr4650549ion.61.1521140569239;
        Thu, 15 Mar 2018 12:02:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521140569; cv=none;
        d=google.com; s=arc-20160816;
        b=gi2K8YbOfHhCublZpz6cq+QhYqOVt8UmMKMJKx+dzPo9zB2jiz8GwhJ8DH3c2XSrUG
         EXCwICMpNU4n46jk5MREdRWYadCMrNPVH8jc5i0ts8qicbFkTs/UpbyLoexa0zsfw86q
         vZk5W0pDR9CPW4sbm6th+61Pc0F6i1dQEAKClJu8uq2Fxr4gufFqqgX1Wz9CamcdyFVr
         FMG69o3d+mfBOs1CPwcQKSV/GzVwsZBI5m+TxOEh87wghdV0c58HTQNV9X7/aqLyYx+Q
         uhwKa2Srs4MbjsDoiTyJGpIlRjWE4MnefpubsExjUsKShQId9STZ1z90CYR1gE2LX8aP
         PEFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=pDp+67OWF4206DrmjbF9QMagAvkqUkxYtQlOABO3aFY=;
        b=yYTHj5JdM4aB93ihMTynn4FsUpXrLXTXBVPPaDxCXJTQ2vIKSVyiSCf78QEAJN2okD
         MnUGsm+aGpBx+f+SIQ1/B9xbZPko3R57Gtm4Hu1I1tafRGWLkuXJ5UTFvHq2LMwS5kqa
         g+GfC8JHGLVi3NhzXxWsgU1DRhgCgedVJVMJz8dkFpZkwqHAKZnVRv4/04EH2JX6uHd8
         tLi3Gqbx0wflYeRnwUJkGNNkopVl3OZXToRHMHtUbpp1Mz2B/KIEst9BU+cVI+CmLKhE
         e2QTMhVYTuXwFA2OonibD0jNW9ifDuwt9mTp+4q0LVqV0W0GKh5bd5wWNTFRsaqeGURw
         xWmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=S/8wgxh1;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::22f as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-it0-x22f.google.com (mail-it0-x22f.google.com. [2607:f8b0:4001:c0b::22f])
        by gmr-mx.google.com with ESMTPS id t10si332175itf.2.2018.03.15.12.02.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Mar 2018 12:02:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::22f as permitted sender) client-ip=2607:f8b0:4001:c0b::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=S/8wgxh1;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::22f as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-it0-x22f.google.com with SMTP id e64-v6so10454537ita.5
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Mar 2018 12:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=pDp+67OWF4206DrmjbF9QMagAvkqUkxYtQlOABO3aFY=;
        b=S/8wgxh1e9tzri5fubPhmAXxO/5hWHDWwdu3TBHjXVI3OxK50UagQLxPN20abBVXmK
         g5SVIX51G0+9lbUAvC5EiXZE8XtBSPp5EQtpSi4/7o5aacW5g3qmebifMW7lchLlUiRH
         fzMZHSyXpdHJcHBnks89clKPgf8Nd5Bx4C3jc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=pDp+67OWF4206DrmjbF9QMagAvkqUkxYtQlOABO3aFY=;
        b=nVRiRzSYhYFKWDKPNlCJo/wv+jBGyOdTb6C5XzR2F/qFwRGq2/JS0C7lwPLmJUzO2O
         7xhbHxBeqU0dz/bDRZlYobNukjWP170RdFJU5DjeiMSJYD91VhJ3j3c5QdvmLV4pyfqo
         ZiHAA5iR6IK1cFrJAcbBnZB19BVqXuX7A5ZKAD4dR9wnc64Z2oiV9j8+OH5TXxNGLzqD
         eRXexAZx6uBj/gj5Avm6FB+CsVY6SjWuRXxs2F9KOskkt8LxFnrKTQ86O45Q6PGOGZWo
         0yzempuKPb7E1RUUgYp3nUhVSidZCIgUeaPWZ0/BXrjmjSYSxF8Pl07IOFO8Ezovi25C
         R/RA==
X-Gm-Message-State: AElRT7G5Fh/dQhQTATE2RvA1P6hvtzWAVZx3hHKGAiOmMEgi9UNWIei6
	gb6fsr4l6SIf9d8vRn2xPgqvTLURRVcFkJtm6hMBI3T4
X-Received: by 10.36.108.19 with SMTP id w19mr7557444itb.65.1521140568553;
 Thu, 15 Mar 2018 12:02:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.128.23 with HTTP; Thu, 15 Mar 2018 12:02:48 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1803151952070.3302@hadrien>
References: <1521139235-6133-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <alpine.DEB.2.20.1803151952070.3302@hadrien>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Fri, 16 Mar 2018 00:32:48 +0530
Message-ID: <CAC4++KCjSxSvzW_bhZ-+UHW=hhfSu=kZyknD2gkpEKyM_=iAxw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Remove else after return
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Samuel Thibault <samuel.thibault@ens-lyon.org>, William Hubbs <w.d.hubbs@gmail.com>, 
	Christopher Brannon <chris@the-brannons.com>, kirk@reisers.ca, gregkh@linuxfoundation.org, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

As far as I understand it, there was an isolated "if" statement at the
beginning, then 3 "if-else" statements, then an "else" statement and
then a block of code. Of these, the only places where I did not add
the block of code are the "else" statement (because it returns on its
own), the "if" statement just before that (it also returns) and the
first isolated "if" statement. In other places I cut and paste the
code that used to be below the "else". Should I also have done the
same below "help_init()" of the first "if" statement?

Thanking you,
Nishka Dasgupta

On Fri, Mar 16, 2018 at 12:23 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Thu, 15 Mar 2018, Nishka Dasgupta wrote:
>
>> Remove else after return and modify code accordingly. Issue found with
>> checkpatch.
>>
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
>> ---
>>  drivers/staging/speakup/keyhelp.c | 82 +++++++++++++++++++++++----------------
>>  1 file changed, 48 insertions(+), 34 deletions(-)
>>
>> diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
>> index 5f1bda3..020e0ea 100644
>> --- a/drivers/staging/speakup/keyhelp.c
>> +++ b/drivers/staging/speakup/keyhelp.c
>> @@ -153,6 +153,21 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>>                       return 1;
>>               }
>>               cur_item = letter_offsets[ch - 'a'];
>> +             name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
>> +             func = funcvals[cur_item];
>> +             synth_printf("%s", name);
>> +             if (key_offsets[func] == 0) {
>> +                     synth_printf(" %s\n", spk_msg_get(MSG_IS_UNASSIGNED));
>> +                     return 1;
>> +             }
>> +             p_keys = key_data + key_offsets[func];
>> +             for (n = 0; p_keys[n]; n++) {
>> +                     val = p_keys[n];
>> +                     if (n > 0)
>> +                             synth_printf("%s ", spk_msg_get(MSG_DISJUNCTION));
>> +                     say_key(val);
>> +             }
>> +             return 1;
>
> Are you sure this is ok?  If you are removing an else and ajusting the
> indentation of the code, I would expect that each hunk would contain
> removed code, but this one does not.
>
> julia
>
>
>>       } else if (type == KT_CUR) {
>>               if (ch == 0 &&
>>                   (MSG_FUNCNAMES_START + cur_item + 1) <= MSG_FUNCNAMES_END)
>> @@ -161,49 +176,48 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>>                       cur_item--;
>>               else
>>                       return -1;
>> +             name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
>> +             func = funcvals[cur_item];
>> +             synth_printf("%s", name);
>> +             if (key_offsets[func] == 0) {
>> +                     synth_printf(" %s\n", spk_msg_get(MSG_IS_UNASSIGNED));
>> +                     return 1;
>> +             }
>> +             p_keys = key_data + key_offsets[func];
>> +             for (n = 0; p_keys[n]; n++) {
>> +                     val = p_keys[n];
>> +                     if (n > 0)
>> +                             synth_printf("%s ", spk_msg_get(MSG_DISJUNCTION));
>> +                     say_key(val);
>> +             }
>> +             return 1;
>>       } else if (type == KT_SPKUP && ch == SPEAKUP_HELP &&
>>                  !spk_special_handler) {
>>               spk_special_handler = spk_handle_help;
>>               synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
>>               build_key_data(); /* rebuild each time in case new mapping */
>>               return 1;
>> -     } else {
>> -             name = NULL;
>> -             if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
>> -                     synth_printf("%s\n",
>> -                                  spk_msg_get(MSG_KEYNAMES_START + key - 1));
>> -                     return 1;
>> -             }
>> -             for (i = 0; funcvals[i] != 0 && !name; i++) {
>> -                     if (ch == funcvals[i])
>> -                             name = spk_msg_get(MSG_FUNCNAMES_START + i);
>> -             }
>> -             if (!name)
>> -                     return -1;
>> -             kp = spk_our_keys[key] + 1;
>> -             for (i = 0; i < nstates; i++) {
>> -                     if (ch == kp[i])
>> -                             break;
>> -             }
>> -             key += (state_tbl[i] << 8);
>> -             say_key(key);
>> -             synth_printf(spk_msg_get(MSG_KEYDESC), name);
>> -             synth_printf("\n");
>> -             return 1;
>>       }
>> -     name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
>> -     func = funcvals[cur_item];
>> -     synth_printf("%s", name);
>> -     if (key_offsets[func] == 0) {
>> -             synth_printf(" %s\n", spk_msg_get(MSG_IS_UNASSIGNED));
>> +     name = NULL;
>> +     if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
>> +             synth_printf("%s\n",
>> +                          spk_msg_get(MSG_KEYNAMES_START + key - 1));
>>               return 1;
>>       }
>> -     p_keys = key_data + key_offsets[func];
>> -     for (n = 0; p_keys[n]; n++) {
>> -             val = p_keys[n];
>> -             if (n > 0)
>> -                     synth_printf("%s ", spk_msg_get(MSG_DISJUNCTION));
>> -             say_key(val);
>> +     for (i = 0; funcvals[i] != 0 && !name; i++) {
>> +             if (ch == funcvals[i])
>> +                     name = spk_msg_get(MSG_FUNCNAMES_START + i);
>> +     }
>> +     if (!name)
>> +             return -1;
>> +     kp = spk_our_keys[key] + 1;
>> +     for (i = 0; i < nstates; i++) {
>> +             if (ch == kp[i])
>> +                     break;
>>       }
>> +     key += (state_tbl[i] << 8);
>> +     say_key(key);
>> +     synth_printf(spk_msg_get(MSG_KEYDESC), name);
>> +     synth_printf("\n");
>>       return 1;
>>  }
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521139235-6133-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
>> For more options, visit https://groups.google.com/d/optout.
>>

