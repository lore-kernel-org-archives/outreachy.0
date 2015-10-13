X-GM-THRID: 6205086344963686400
X-Received: by 10.180.91.233 with SMTP id ch9mr4201818wib.4.1444740544059;
        Tue, 13 Oct 2015 05:49:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.105.135 with SMTP id gm7ls1044161wib.29.gmail; Tue, 13 Oct
 2015 05:49:03 -0700 (PDT)
X-Received: by 10.180.85.133 with SMTP id h5mr4191921wiz.1.1444740543685;
        Tue, 13 Oct 2015 05:49:03 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m4si135033wib.0.2015.10.13.05.49.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 05:49:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,678,1437429600"; 
   d="scan'208";a="182553629"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Oct 2015 14:48:44 +0200
Date: Tue, 13 Oct 2015 14:48:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: wilc1000: wilc_wfi_cfgoperations:
 Change variable to bool
In-Reply-To: <CAKHNQQFMF=dEO2=1fZD+g6HiwV9xfAqjSe8AD21AsOF6P5sbqA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510131447490.2391@hadrien>
References: <cover.1444733999.git.shivanib134@gmail.com> <20f17185a553556d1d6d806811bf068cd727a689.1444733999.git.shivanib134@gmail.com> <alpine.DEB.2.10.1510131319060.2391@hadrien> <CAKHNQQFMF=dEO2=1fZD+g6HiwV9xfAqjSe8AD21AsOF6P5sbqA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Oct 2015, Shivani Bhardwaj wrote:

> On Tue, Oct 13, 2015 at 4:50 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Tue, 13 Oct 2015, Shivani Bhardwaj wrote:
> >
> >> Change variable of the type u8 to bool as the only values acquired by it
> >> are true or false.
> >
> > This looks better, but now I think that PMKID_FOUND is not used anywhere,
> > so its definition can be removed.
> >
> > julia
> >
> I've removed that from header, should I send a v3 with header file's
> changes included? Or I can send it individually?

Removing that from the header is only valid if these other changes are
done, so to ensure the patches get applied in the right order, it could be
better to send a v3, with that being the third patch.

julia

> Thank you
>
> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> >> ---
> >>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 6 +++---
> >>  1 file changed, 3 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> >> index d2e6f55..e4c134a 100644
> >> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> >> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> >> @@ -1714,7 +1714,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
> >>  {
> >>       u32 i;
> >>       s32 s32Error = 0;
> >> -     u8 flag = 0;
> >> +     bool pmkid_found = false;
> >>
> >>       struct wilc_priv *priv = wiphy_priv(wiphy);
> >>
> >> @@ -1725,7 +1725,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
> >>               if (!memcmp(pmksa->bssid, priv->pmkid_list.pmkidlist[i].bssid,
> >>                                ETH_ALEN)) {
> >>                       /*If bssid already exists and pmkid value needs to reset*/
> >> -                     flag = PMKID_FOUND;
> >> +                     pmkid_found = true;
> >>                       PRINT_D(CFG80211_DBG, "PMKID already exists\n");
> >>                       break;
> >>               }
> >> @@ -1736,7 +1736,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
> >>                           ETH_ALEN);
> >>               memcpy(priv->pmkid_list.pmkidlist[i].pmkid, pmksa->pmkid,
> >>                           PMKID_LEN);
> >> -             if (!(flag == PMKID_FOUND))
> >> +             if (!pmkid_found)
> >>                       priv->pmkid_list.numpmkid++;
> >>       } else {
> >>               PRINT_ER("Invalid PMKID index\n");
> >> --
> >> 2.1.0
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20f17185a553556d1d6d806811bf068cd727a689.1444733999.git.shivanib134%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQFMF%3DdEO2%3D1fZD%2Bg6HiwV9xfAqjSe8AD21AsOF6P5sbqA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

