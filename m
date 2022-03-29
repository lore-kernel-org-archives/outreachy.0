Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D9F29A2
	for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 21:42:28 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id d5so32568039lfj.9
        for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 14:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=H68amN4zktn4ne+U6g1708rX5wp24aStihPSW/Ai1/s=;
        b=B9wiOpUfOgz11GG/+k1zplzUSwWBtu3Tt+wVegDuBcnoDC/PbihwdYyZen5aTIIvlt
         52DixZkXfULmkU0hyzetIoNG9coRLYAknwE2rubAZDv/6FljFYBhoCtXKs4jmIJprNpV
         LkvaLW3KEY8TPywjvjCzwkEOwBhv/JEMuRbbyKciF3Av4JDxnEnzZ1Bdaacg8ntqyPke
         TcZHMF14Kf3sJfpKQKOv2DWb5ZzIFusjnUBuY4ZdpfamsyRBU5YJgShJVHGycyUQdCxx
         Gp+V+oVah55rliUEukESBlghQfEYIe5DiKNEiMIvGtEFGWBvbDLL34Ssl2nfxaoGc5aw
         zNtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=H68amN4zktn4ne+U6g1708rX5wp24aStihPSW/Ai1/s=;
        b=TacAX/FJLtA/5/mwSalLRd7S0owJ5OwuPGtV4OGMixFi1+nWBlT/UxTjiYARFvMLZI
         7HcCUlahp7rMBG90E+qoGtNUMTjeZRnkALVnLJxIgitznuJrQX/vC3MX8sTE8VrKZIZy
         dj8HTot+V6pJMNWdtsPnozV/1JZv0BR8dzMKfEnwe0RLy+xUvRniG2WZC1mWNzIV4Qv2
         RhA6vomhjM1cw0skIvgFQXClJKPxQX/g1cO+SEbT5NxPZnrzA72B7f2ge+hsygLuBk1o
         zbFmtGDCOat2nrB0fP5lGiPKb8MeNnEE8bvQUazsBemLBTWaD9EmKXz+qVDURZ9EH2IP
         vGaw==
X-Gm-Message-State: AOAM530kuKJydb4JzoLPAKzjimuPfexeRO1FcN0NwKykjxqf0Xo6wewI
	rVrTcuGsRMv4monxevSgijZ1QR4euL+I1YlH1pPqn9I69xTZsQ==
X-Google-Smtp-Source: ABdhPJxNkSanHctaF9Bodr/Uy40e7HitMdYPccx4ZZSyYvLwPYYy3rt4kCDK78QQsxcSyGRrLYAzVDGiYgPbej/E5u8=
X-Received: by 2002:a19:7501:0:b0:44a:2f6f:3ae8 with SMTP id
 y1-20020a197501000000b0044a2f6f3ae8mr4272824lfe.143.1648590146111; Tue, 29
 Mar 2022 14:42:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20220329140904.GA3566@ubuntu> <20220329200053.GA1170989@alison-desk>
 <CAMWRUK4ti6QxA4JWbG_XwZHwQwWUKYu+HvVHvEBX-k82oaEP6g@mail.gmail.com> <20220329212426.GA1171538@alison-desk>
In-Reply-To: <20220329212426.GA1171538@alison-desk>
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Date: Tue, 29 Mar 2022 14:15:04 -0700
Message-ID: <CAMWRUK6Pca47JcLUJwxFz7c37yQtvEAjL41O-GTB2DfASUURGw@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: Remove redundant else branches.
To: Alison Schofield <alison.schofield@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 29, 2022 at 2:22 PM Alison Schofield
<alison.schofield@intel.com> wrote:
>
> On Tue, Mar 29, 2022 at 01:59:52PM -0700, Sevinj Aghayeva wrote:
> > Hi Alison,
> >
> > Thanks for the feedback! Please see inline.
> >
> > On Tue, Mar 29, 2022 at 12:58 PM Alison Schofield <
> > alison.schofield@intel.com> wrote:
> >
> > > Hi Sevinj,
> > >
> > > You can do this to make sure your commit msg 'looks' similar to
> > > others in the file:
> > >
> > > $git log --pretty=oneline --abbrev-commit
> > >
> > > d6ad258ae15d staging: rtl8723bs: Remove redundant else branches.
> > > 24e65aac9457 staging: rtl8723bs: remove rf type branching (fourth patch)
> > > 167fc30e8e51 staging: rtl8723bs: remove unused macros
> > > d7361874468f staging: rtl8723bs: fix camel case in struct wlan_bcn_info
> > > 6994aa430368 staging: rtl8723bs: fix camel case in struct ndis_802_11_ssid
> > >
> > > That tells me the 'Remove' should not start with an uppercase and
> > > there should be no period at the end of line. Note that I look at this
> > > per patch, because different drivers and subsystems have different
> > > conventions. The point is to try to discern the prevailing style,
> > > and follow it.
> > >
> >
> > Got it. The few examples that I saw in other places were using
> > grammatically formatted sentences, but I'll take the subsystem conventions
> > into account.
> >
> >
> > > Please check the get_maintainers instruction in the first patch tutorial.
> > > I only got this:
> > >
> > > $ git show HEAD | perl scripts/get_maintainer.pl --separator ,
> > > --nokeywords --nogit --nogit-fallback --norolestats
> > > Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
> > > linux-staging@lists.linux.dev,linux-kernel@vger.kernel.org
> >
> >
> > My bad! I ran get_maintainer.pl without those options and got those a lot
> > more email addresses.
> >
> >
> > >
> > >
> > >
> > > On Tue, Mar 29, 2022 at 07:09:04AM -0700, Sevinj Aghayeva wrote:
> > >
> > > Please state the 'why' of this patch. ie something like:
> > > Adhere to Linux kernel coding style.
> > >
> > > > This patch fixes the following checkpatch.pl warning:
> > > The phrases 'This patch' is frowned upon as unecessarily wordy.
> > > Perhaps simply:
> > > Reported by checkpatch:
> > >
> >
> > Okay. I think we should update the https://kernelnewbies.org/PatchPhilosophy
> > because I took "This patch..." from there.
>
> Yeah, there's a lot of 'This patch...' and 'Fixes...' and some other
> stuff that has fallen out of favor.
> I just made a small edit getting rid of a 'Fixes' subject line.
>
> How about if you update this example:
> Subject: [OPW kernel] [PATCH] Staging: rtl8192e: Fix printk() warning style
> with your patch right here..once it is done!

Sounds good! I think I will have to send a request for editing pages
like you explained in a previous email...

(Removed non-maintainers' email address from this thread. It's
baffling that a script called get_maintainers would return email
addresses of people who are not maintainers :-).)

>
> Thanks!
> Alison
>
> >
> >
> > >
> > > You have another patch in flight with similar things to update.
> > > Please post a v2 of that one that addresses the feedback given
> > > here.
> > >
> >
> > That one has already landed. Is it okay if I send v2 just for this patch?
>
> Did you see it applied already?
>
> >
> > Thanks!
> >
> >
>
>
>
> > >
> > > I thought both patches had good scope in that they addressed multiple
> > > instances of the same issue in a single file.
> > >
> > > Thanks!
> > > Alison
> > >
> > > >
> > > > WARNING: else is not generally useful after a break or return
> > > >
> > > > Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
> > > > ---
> > > >  .../staging/rtl8723bs/core/rtw_ieee80211.c    | 32 ++++++++-----------
> > > >  1 file changed, 13 insertions(+), 19 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
> > > b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
> > > > index b449be537376..27de086903e2 100644
> > > > --- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
> > > > +++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
> > > > @@ -94,16 +94,14 @@ bool rtw_is_cckratesonly_included(u8 *rate)
> > > >
> > > >  int rtw_check_network_type(unsigned char *rate, int ratelen, int
> > > channel)
> > > >  {
> > > > -     if (channel > 14) {
> > > > +     if (channel > 14)
> > > >               return WIRELESS_INVALID;
> > > > -     } else { /*  could be pure B, pure G, or B/G */
> > > > -             if (rtw_is_cckratesonly_included(rate))
> > > > -                     return WIRELESS_11B;
> > > > -             else if (rtw_is_cckrates_included(rate))
> > > > -                     return  WIRELESS_11BG;
> > > > -             else
> > > > -                     return WIRELESS_11G;
> > > > -     }
> > > > +     /* could be pure B, pure G, or B/G */
> > > > +     if (rtw_is_cckratesonly_included(rate))
> > > > +             return WIRELESS_11B;
> > > > +     if (rtw_is_cckrates_included(rate))
> > > > +             return WIRELESS_11BG;
> > > > +     return WIRELESS_11G;
> > > >  }
> > > >
> > > >  u8 *rtw_set_fixed_ie(unsigned char *pbuf, unsigned int len, unsigned
> > > char *source,
> > > > @@ -151,11 +149,10 @@ u8 *rtw_get_ie(u8 *pbuf, signed int index, signed
> > > int *len, signed int limit)
> > > >               if (*p == index) {
> > > >                       *len = *(p + 1);
> > > >                       return p;
> > > > -             } else {
> > > > -                     tmp = *(p + 1);
> > > > -                     p += (tmp + 2);
> > > > -                     i += (tmp + 2);
> > > >               }
> > > > +             tmp = *(p + 1);
> > > > +             p += (tmp + 2);
> > > > +             i += (tmp + 2);
> > > >               if (i >= limit)
> > > >                       break;
> > > >       }
> > > > @@ -199,9 +196,8 @@ u8 *rtw_get_ie_ex(u8 *in_ie, uint in_len, u8 eid, u8
> > > *oui, u8 oui_len, u8 *ie, u
> > > >                               *ielen = in_ie[cnt+1]+2;
> > > >
> > > >                       break;
> > > > -             } else {
> > > > -                     cnt += in_ie[cnt+1]+2; /* goto next */
> > > >               }
> > > > +             cnt += in_ie[cnt+1]+2; /* goto next */
> > > >       }
> > > >
> > > >       return target_ie;
> > > > @@ -697,9 +693,8 @@ u8 *rtw_get_wps_ie(u8 *in_ie, uint in_len, u8
> > > *wps_ie, uint *wps_ielen)
> > > >                       cnt += in_ie[cnt+1]+2;
> > > >
> > > >                       break;
> > > > -             } else {
> > > > -                     cnt += in_ie[cnt+1]+2; /* goto next */
> > > >               }
> > > > +             cnt += in_ie[cnt+1]+2; /* goto next */
> > > >       }
> > > >
> > > >       return wpsie_ptr;
> > > > @@ -748,9 +743,8 @@ u8 *rtw_get_wps_attr(u8 *wps_ie, uint wps_ielen, u16
> > > target_attr_id, u8 *buf_att
> > > >                               *len_attr = attr_len;
> > > >
> > > >                       break;
> > > > -             } else {
> > > > -                     attr_ptr += attr_len; /* goto next */
> > > >               }
> > > > +             attr_ptr += attr_len; /* goto next */
> > > >       }
> > > >
> > > >       return target_attr_ptr;
> > > > --
> > > > 2.25.1
> > > >
> > > >
> > >
> >
> >
> > --
> >
> > Sevinj.Aghayeva



-- 

Sevinj.Aghayeva
