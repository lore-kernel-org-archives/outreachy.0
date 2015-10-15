X-GM-THRID: 6205554058197991424
X-Received: by 10.66.123.14 with SMTP id lw14mr4502948pab.6.1444893567123;
        Thu, 15 Oct 2015 00:19:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.25 with SMTP id i25ls391016iod.17.gmail; Thu, 15 Oct
 2015 00:19:26 -0700 (PDT)
X-Received: by 10.107.41.69 with SMTP id p66mr4021831iop.25.1444893566790;
        Thu, 15 Oct 2015 00:19:26 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id vy6si1250435pbc.1.2015.10.15.00.19.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 00:19:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id p3so31410994pay.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 00:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=CLHLh+rgx4e3wwQ2CtZdZZLmDycffkpEzDU7/RqHwfA=;
        b=HxyZo91Z+DArS7Hx0s/aPA88zUTWz5hvAj0rVshMg3UL4kNm4pDQzaJ8ZzYwtli6XI
         BbTjqjuharDBgbsk2S09LIx/dm0YVF7kxgt3S5090S1NdL8XkStIIOx2NJuZ0d01oA+V
         h+CxUMFCIDA73iR8v6uVMTgZ30AH3Qbm5/fhAAzyz6mAnw8AO5nx8JEVvZgUdZ+JxFsP
         rgrPZZ6sy9pcxOufZSn/ENkJCUYOVOhUBAG0NBWRjd0pwYm5udOIFxHRv2sNBMIKl0TK
         TTvhqzDaJpdAxbxZ6ibplUyR5CzKCKcOucT+GyXFffOXJIF7iyCZr74LaIwg8LG/ZpBg
         oDVw==
X-Received: by 10.66.102.7 with SMTP id fk7mr8320475pab.119.1444893566646;
        Thu, 15 Oct 2015 00:19:26 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.135.176])
        by smtp.gmail.com with ESMTPSA id pu5sm13445227pbc.58.2015.10.15.00.19.24
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 00:19:26 -0700 (PDT)
Date: Thu, 15 Oct 2015 12:49:20 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211_rx:
 Remove unnecessary code
Message-ID: <20151015071920.GE3134@sudip-pc>
References: <20151014171850.GA19220@ubuntu>
 <20151015065035.GC3134@sudip-pc>
 <CAKHNQQHwsnzcxqvkTS-TVwZXOp5OLOADndP0V6wLJJnFTaY9EQ@mail.gmail.com>
 <20151015070138.GD3134@sudip-pc>
 <CAKHNQQG4SmQeqiaVascD4+zc51ipvG7qY1j_Zx4KNj_4p_MB2g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKHNQQG4SmQeqiaVascD4+zc51ipvG7qY1j_Zx4KNj_4p_MB2g@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 15, 2015 at 12:37:42PM +0530, Shivani Bhardwaj wrote:
> On Thu, Oct 15, 2015 at 12:31 PM, Sudip Mukherjee
> <sudipm.mukherjee@gmail.com> wrote:
> > On Thu, Oct 15, 2015 at 12:22:35PM +0530, Shivani Bhardwaj wrote:
> >> On Thu, Oct 15, 2015 at 12:20 PM, Sudip Mukherjee
> >> <sudipm.mukherjee@gmail.com> wrote:
> >> > On Wed, Oct 14, 2015 at 10:48:50PM +0530, Shivani Bhardwaj wrote:
> >> >> The variable frame_authorized is declared and mentioned in the code but
> >> >> is not used anywhere so, it should be removed. Also, two case statements
> >> >> are merged by removing an extra break.
> >> > <snip>
> >> >> @@ -1106,10 +1105,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
> >> >>               switch (hostap_handle_sta_rx(ieee, dev, skb, rx_stats,
> >> >>                                            wds != NULL)) {
> >> >>               case AP_RX_CONTINUE_NOT_AUTHORIZED:
> >> >> -                     frame_authorized = 0;
> >> >> -                     break;
> >> >>               case AP_RX_CONTINUE:
> >> >> -                     frame_authorized = 1;
> >> >>                       break;
> >> >
> >> > Just a doubt, it now becomes:
> >> >         case AP_RX_CONTINUE_NOT_AUTHORIZED:
> >> >         case AP_RX_CONTINUE:
> >> >                 break;
> >> >
> >> > If these two cases are not doing anything then what is the use of having
> >> > them here in the switch-case?
> >> >
> >> > regards
> >> > sudip
> >>
> >> Because we don't have a default case here and the variable in switch
> >> might still get these values based on some other code.
> >
> > I think default case is to handle all cases which are not given by case
> > statement. What will happen if variable gets these values but these
> > cases are not mentioned? switch-case will see that these cases are not
> > mentioned and will exit the switch-case. In the situation where these
> > cases are mentioned, switch-case will see these cases exist, will come
> > to these cases and breaks out of switch-case.
> > Am I understanding anything wrong here?
> >
> > regards
> > sudip
> 
> No, you are completely right. :) So, should I remove these cases? And
> if these cases are to be removed there won't be a need of switch case
> at all. Or should I leave it thinking that programmer might have to
> make some changes?

The main change required for this driver will be to use mac80211, so
that means all these codes regarding ieee80211 has to be removed one
day. So, I guess you can remove these cases. Anyways, lets wait for
Greg's comment then change if required.

regards
sudip

