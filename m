X-GM-THRID: 6394684558131855360
X-Received: by 10.99.111.143 with SMTP id k137mr204441pgc.1.1488895075724;
        Tue, 07 Mar 2017 05:57:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.6 with SMTP id o6ls483537otc.47.gmail; Tue, 07 Mar 2017
 05:57:55 -0800 (PST)
X-Received: by 10.129.75.5 with SMTP id y5mr192290ywa.28.1488895075249;
        Tue, 07 Mar 2017 05:57:55 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-it0-x241.google.com (mail-it0-x241.google.com. [2607:f8b0:4001:c0b::241])
        by gmr-mx.google.com with ESMTPS id i189si623629iti.0.2017.03.07.05.57.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 05:57:55 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) client-ip=2607:f8b0:4001:c0b::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x241.google.com with SMTP id r141so593596ita.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 05:57:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=DnbPMOJaRotDr5ZsNBiWPM+ILEwk0kV+ph9bxk9znzQ=;
        b=YWlUsILsIJbbfKcSCfcwo2jDLJxoyH8h1UBCy7ADx9DnC0Hq6TMxCpe0lprforORpu
         ZJN7DkFab5gqWOZ0Q/3aIko1t2bN6yEd2ENL+FOMZBdSTVo1Kjhx9vWehkw4gvCvzqlp
         SPQ9c7Jqetdb/W7d05EcS5hZaHhijZfdAisUcCIvB1yhot5xrWVTTyzia2lYfHgYwpmV
         sk/FkqdDh7cvHHB/B5ky8QWStEhh8jeg3wG1X4mnxosgkvC+UXT8QkUoHR8i7CUx5XCX
         JsvBCuJIlyJULgn7kyCsgPj9he+m9CxwcESB5ixQ/LeKkXVH+R+02h4s35fKGrwSQINj
         4wpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=DnbPMOJaRotDr5ZsNBiWPM+ILEwk0kV+ph9bxk9znzQ=;
        b=aSF8IQZoDQ4hk+6OZIRijciBW2httLO2b9wDXDw0hDPr8bRt9ACu1X3BMVdQc1zJRJ
         GXU43ynVHggs/6iXmWr+7Nyp/OKCnrkNbU/DGtI60f4aZ/CJl44vORcEzOgGArxVXXc1
         Sl6jCXapeQ42Ypo81SKNA1DHjzpzLXTBuCaLpNteZ9H0r8kDR2+jXI6m0/nNrqPSJW0q
         /EKoijbvU4w+OMu0bCs0yReMGlK2yAe0HLApwVCNXX182m4oMh0I0q6xcFKOBOFGvsLm
         ypoGJF2Ekxr+O2gwjKHEWwJ57XAEjwCAdscJARweOO1KPGM1Juid7rvGRWhX6vuJV00H
         3xQQ==
X-Gm-Message-State: AMke39kcmvK2wjeBVHyGu1EmHz1XfF6E7ER+ZwB8EZyrEHaaRN3biLUoKRjVT6OYZTkw4Ntw7Nz/WkGZhVaoWQ==
X-Received: by 10.36.138.65 with SMTP id v62mr19878156itd.108.1488895075016;
 Tue, 07 Mar 2017 05:57:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.26.201 with HTTP; Tue, 7 Mar 2017 05:57:54 -0800 (PST)
In-Reply-To: <20170307092155.14802-1-diaconita.tamara@gmail.com>
References: <20170307092155.14802-1-diaconita.tamara@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 7 Mar 2017 15:57:54 +0200
Message-ID: <CAEnQRZD-VtEBoGjAYizghxMM2YFdw8GhaVHNOAsozjzPLZF_WQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: kobjects: Delete comparison
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>, Christopher Brannon <chris@the-brannons.com>, kirk@reisers.ca, 
	Samuel Thibault <samuel.thibault@ens-lyon.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Tamara Diaconita <diaconita.tamara@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 7, 2017 at 11:21 AM, Tamara Diaconita
<diaconitatamara@gmail.com> wrote:
> Delete comparison in 'if' structure to fix the checkpath.pl issue:
> CHECK: Comparison to NULL could be written 'synth'.
>
> Comparison to NULL is not necessary because 'if' structure tests if
> 'synth' is NULL anyway.
This explanation should be placed before mentioning checkpatch.pl.

The commit message shouldn't focus on the error reported
by checkpatch, but mostly on why this patch is needed.

After, you explain this you can add a mention that it was discovered
using checkpatch :).


>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/speakup/kobjects.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index ac6ed8b..0cd5384 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -391,7 +391,7 @@ static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
>                 len--;
>         new_synth_name[len] = '\0';
>         spk_strlwr(new_synth_name);
> -       if ((synth != NULL) && (!strcmp(new_synth_name, synth->name))) {
> +       if ((synth) && (!strcmp(new_synth_name, synth->name))) {
>                 pr_warn("%s already in use\n", new_synth_name);

At this point you can remove the parenthesis (synth) -> synth

>         } else if (synth_init(new_synth_name) != 0) {
>                 pr_warn("failed to init synth %s\n", new_synth_name);

