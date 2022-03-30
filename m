Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D980E366
	for <outreachy@lists.linux.dev>; Wed, 30 Mar 2022 01:50:59 +0000 (UTC)
Received: by mail-lj1-f181.google.com with SMTP id v12so13070543ljd.3
        for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 18:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NNKk/pjX+40oj9soI33zQyaEWMCV8wE7N1qMilW2Stg=;
        b=DITysnHF9ZGk8UNcqfburVZuQ2dQB6fasl4tmS3bfg87Z16OGUSM/9kxTZ+5SvFDeK
         j+fDZbVUoLZ77HBAq6MDINz6iSvdlCnVE4xPDTtjLGwihKE83bZha3ayWJ+tnMdqV+Gy
         o1BZbnFB3E8zH0PuIhYCDDvt7XplqlmvpLeeXIZWDw5/Ptd2hWP5t0VX7EHJg7JlNziL
         wzATJbADep4vCnODXrwSEeVSRJjnuZnrIRehYFIb/9khKwH449M07VX4GpHnBSc3/WbL
         v2pZx4I70RAqIEbfjmVtF1uolkRetGnJBLRZsAhzrJ15LVqlKtEXgo5iArnsppXzfheZ
         1QzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NNKk/pjX+40oj9soI33zQyaEWMCV8wE7N1qMilW2Stg=;
        b=ZNvF+OrJsx7TNrp97wQ370KFPZg9c0CVbf5qqGQqhQIQNyMvB+G3w+gM3r/ZUEMzw5
         UgFsh6Z+dsTrl7MJdjrFNeAE4l5kJ5KcT2MnzoRnat9zeruQ6MrxzBR3MYxqOWtkknZ+
         gVsa/KafjcYH/csB5mZy6aTRhXOVpEnjs2afMHZuvljchDVHs4Iti22JyOrGYUp8piBS
         r2FXRZEBPTnKMUk0xJkKcP3xNmcImgHXyokiTUuVsWFbKJtiN2pwnJ8W3HFXiug8J9g1
         mq0hBd4mtF/SDUS+NmCGPLXWM1oUeTL8PtJqpkVdcw1YEUtwEpxfVazSYru5f8FnnF+v
         nYmw==
X-Gm-Message-State: AOAM533VMWXdOitumPA8pmxsilueu6N7UIDcwXVc1aZtjcaSdUbg3cap
	OKLWkoJJbCb5uu98+YEX4UMo/vGQxEkNLSEVgPJgsTSdxWEucxmC
X-Google-Smtp-Source: ABdhPJykMvQ/xzs3kDDqD9Q3NYosugRoExcl/EOlejpCxMVEwj2HBIsCjFanJQR/4c7RBBkqdVIgjZD1mDZ5OGhoujc=
X-Received: by 2002:a05:651c:1507:b0:249:83b4:9a27 with SMTP id
 e7-20020a05651c150700b0024983b49a27mr5194837ljf.24.1648605057802; Tue, 29 Mar
 2022 18:50:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAMWRUK7oaT3bh7pJK5oMWYh3Sptwx6UdgNwds6d_A0CQxC24pw@mail.gmail.com>
 <20220330013408.GA1173441@alison-desk>
In-Reply-To: <20220330013408.GA1173441@alison-desk>
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Date: Tue, 29 Mar 2022 21:50:46 -0400
Message-ID: <CAMWRUK4xoy3M8ob2soAwp-RHvro8TGGQdXBim9K1z5nXTTer_g@mail.gmail.com>
Subject: Re: [KERNEL NEWBIES ACCESS] SevinjAghayeva
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Thanks! If you think my "[PATCH v2] staging: rtl8723bs: remove
redundant braces in if statements" is okay, I can replace the example
in PatchPhilosophy that contains "This patch fixes...".

On Tue, Mar 29, 2022 at 9:31 PM Alison Schofield
<alison.schofield@intel.com> wrote:
>
> On Tue, Mar 29, 2022 at 09:25:10PM -0400, Sevinj Aghayeva wrote:
> > Please grant me edit privileges to improve the wiki pages.
> >
> > Thanks!
> Added you to https://kernelnewbies.org/EditorsGroup
> Ping me back if any issues.
> Thanks for helping maintain the wiki.
> >
> > --
> >
> > Sevinj.Aghayeva
> >



-- 

Sevinj.Aghayeva
