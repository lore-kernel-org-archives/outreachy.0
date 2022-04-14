Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B42A3225
	for <outreachy@lists.linux.dev>; Thu, 14 Apr 2022 22:01:38 +0000 (UTC)
Received: by mail-pj1-f52.google.com with SMTP id h15-20020a17090a054f00b001cb7cd2b11dso6935425pjf.5
        for <outreachy@lists.linux.dev>; Thu, 14 Apr 2022 15:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cs-iitr-ac-in.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+1mAXBLJMi+kcuQeqEFVkpTFAdTtHWNKfLqhzSS5OcA=;
        b=5iZlroAPeAixTJjDn18L8Y9yKhNMqDK3hGvkINQHBuwcb5YLIBNaC3BS+j5BKTyqcR
         cDoB0g0EuVoS+Z2ISoJRCg13dvV0F5I1pFC54oS8KBsrOWFLm0jIb24aU3IuBrppLILW
         yEx5sNBMxh9jqaiLqI+XGwAEi9H6ecRhxUg8BqXDg6tN3D2zwDssaRceUW3qJrZt7QPI
         lGhvRUBw1YG0lS+NdpMSdt9hDiaRpzGSYTVj+8BO6xpoS6cCW6cVDhXNLJCZDu1nG2GU
         siCzR6BUcNY0ZQg9RZUU6LhhQsvKpu/eMPEjaNs68u0Ja6kBa6FbwLiZpim1Mq2/+U+L
         4bdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+1mAXBLJMi+kcuQeqEFVkpTFAdTtHWNKfLqhzSS5OcA=;
        b=x28ygTEkz8/IMSdY/DlLKnlCm3bSBT+/ejEPg8GSArZvU2XlPxzFim9rneffem+aaM
         YlmdQCjYiApE5CrX73qAcypSjl1FOEuD97knmBvAivKAOsVlWqe4tbTo6HKqZO0Gi/qU
         0Scsw6ortMYI6UVEJRSFpy88KAFnUdFXKsxDwM3r3si5Rhf2Uldazr0wxVdm7a4nBtPI
         oErAiNGL63/BPH1092D8+qOk5ZNHOtFRUjvfMWl7brwMUpnilEKyVN3uQKq+/fPJAZHP
         /sCEN9TA7mGKFi0R1AnxOcXTJHmzu+6ifTGt9k/eVGYkCEnXqAwP5woEa96Ir0jI6Rm0
         7qEw==
X-Gm-Message-State: AOAM530WTMMG2AT21EaGJFt3ttUmPtgPDWDyoQkr/MAtdLTQonWv9/sf
	zJlncMvMBQ1bSB4Q0I4q9NfTsU848oiD2GeFpYj8Zg==
X-Google-Smtp-Source: ABdhPJzBg71n2jrzmvI+0rKVKOoXVlTxmkLk67ypF754KAV0kb2sXxy/YPgmPGRgU9H+I3xwx6rsCLK9Wr2dpN3XkYM=
X-Received: by 2002:a17:90b:4c41:b0:1c7:3fa8:9b6a with SMTP id
 np1-20020a17090b4c4100b001c73fa89b6amr716180pjb.120.1649973697898; Thu, 14
 Apr 2022 15:01:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20220413052759.4859-1-mahak_g@cs.iitr.ac.in> <20226182-81b2-92b9-d286-d9520a1d568b@lwfinger.net>
In-Reply-To: <20226182-81b2-92b9-d286-d9520a1d568b@lwfinger.net>
From: MAHAK GUPTA <mahak_g@cs.iitr.ac.in>
Date: Fri, 15 Apr 2022 03:31:00 +0530
Message-ID: <CANnaPbDceguo6K2FeZ1OT8Woz9-RYJyn+gptsVTXnaLstTz+zQ@mail.gmail.com>
Subject: Re: [PATCH] staging: r8188eu: remove else after return and break statements
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Phillip Potter <phil@philpotter.co.uk>, gregkh@linuxfoundation.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi Larry and Pavel,
On Wed, Apr 13, 2022 at 10:21 PM Larry Finger <Larry.Finger@lwfinger.net> wrote:
>
> On 4/13/22 00:27, Mahak Gupta wrote:
> > Else is not necessary after return and break statements, hence remove
> > it.
> >
> > Reported by checkpatch:
> >
> > WARNING: else is not generally useful after a break or return
> >
> > Signed-off-by: Mahak Gupta <mahak_g@cs.iitr.ac.in>
>
> The commit message is redundant. I would suggest the following:
>
> checkpatch reports the following:
>
> WARNING: else is not generally useful after a break or return
>
> Remove those cases.
This patch is merged by Greg now but I'll keep this in mind for next
patches. Thanks

>
>
> > ---
> >   drivers/staging/r8188eu/core/rtw_ieee80211.c | 41 ++++++++------------
> >   1 file changed, 17 insertions(+), 24 deletions(-)
> >
> > diff --git a/drivers/staging/r8188eu/core/rtw_ieee80211.c b/drivers/staging/r8188eu/core/rtw_ieee80211.c
> > index 5a0e42ed4a47..bb4c9bc864da 100644
> > --- a/drivers/staging/r8188eu/core/rtw_ieee80211.c
> > +++ b/drivers/staging/r8188eu/core/rtw_ieee80211.c
> > @@ -97,16 +97,15 @@ bool      rtw_is_cckratesonly_included(u8 *rate)
> >
> >   int rtw_check_network_type(unsigned char *rate, int ratelen, int channel)
> >   {
> > -     if (channel > 14) {
> > +     if (channel > 14)
> >               return WIRELESS_INVALID;
> > -     } else {  /*  could be pure B, pure G, or B/G */
> > -             if (rtw_is_cckratesonly_included(rate))
> > -                     return WIRELESS_11B;
> > -             else if (rtw_is_cckrates_included(rate))
> > -                     return  WIRELESS_11BG;
> > -             else
> > -                     return WIRELESS_11G;
> > -     }
> > +     /*  could be pure B, pure G, or B/G */
> > +     if (rtw_is_cckratesonly_included(rate))
> > +             return WIRELESS_11B;
> > +     else if (rtw_is_cckrates_included(rate))
> > +             return  WIRELESS_11BG;
> > +     else
> > +             return WIRELESS_11G;
>
> Is this 'else' necessary?
Yeah, we can remove this else too, sorry didn't notice it. Should I
submit another patch removing this?

>
>
> Larry

Mahak
