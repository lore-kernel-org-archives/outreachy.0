X-GM-THRID: 6394973559619321856
X-Received: by 10.129.51.208 with SMTP id z199mr2497184ywz.92.1488983291578;
        Wed, 08 Mar 2017 06:28:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.138 with SMTP id g132ls1037796ioe.5.gmail; Wed, 08 Mar
 2017 06:28:10 -0800 (PST)
X-Received: by 10.99.155.1 with SMTP id r1mr3086018pgd.71.1488983290705;
        Wed, 08 Mar 2017 06:28:10 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id a17si3469809itd.1.2017.03.08.06.28.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:28:10 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id f203so5472358itf.2
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 06:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gt88ln7H1rqFI9vUWTUMk3e2aaCoVlUExx+x7gcO+A0=;
        b=HEzQeq1sz0zOev5s8t502SCpACHQ9SoGhBAQelc6Kk/3yrVgsAw5G08Wea9aF9vYAR
         Wij5GzT67JgwcPmFxTDAuRI0+SKQERO3WLQ+xc+RJj3waZJixItEa/GTt3MXOF5ypkU0
         kkkYbwO8f/Lpj0qVeM6sq3I+cT7jNxEhvt1TpyhG0P3JbjuolM28MO6t1dsaXh6DTUft
         9Nb96Y+fS4JSscPydylrjAoqTzGbvA+Gk4Tvup4BFpEg/KD0cZP3mtUQTgvU7/HKIaiG
         mkLHQdoJ8mnLM1G1C5AF8AbpKgZODM0y15tWb12qBERqd9fp6ZgbeOdQakDLKj+XC8A/
         s1Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gt88ln7H1rqFI9vUWTUMk3e2aaCoVlUExx+x7gcO+A0=;
        b=Ql2Z81hqzmMMXq53/YoVuJwRm0GHcLjfttHTmVZiY3/63KJGe6idDmGMo+FdHrAihU
         1IDQGk0CyFaTCKz63ybWm76kOkmny6b5DSDuI1w7xwayfT0I1duTmlVPUiE7ZWrVSu12
         J86FqoRkAbG9JxoiSG1MjZtU1Mzju41i+qHorg2RxCZevfYAnZMraNPyUcNtk+l7RLRn
         poJDILE+hcZafggBkEOCXbs31slMR63B5lU6H2fLXl/nQOafs7nYo4D3/08LZLltVaTJ
         v2EhChWqkMwIgaLSmEFVBzMg2xii9XmWefQ11wlf8mTjO532VXSs/EeDynalTPRj52My
         k03w==
X-Gm-Message-State: AMke39nv7iPSqREEd7ck+kbb+zQ8/yK6zepBQnGwnrPBLHwlQOlvcpP3vOlLL7osKkBLtg==
X-Received: by 10.107.19.18 with SMTP id b18mr5998115ioj.65.1488983290467;
        Wed, 08 Mar 2017 06:28:10 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id x127sm1575834itg.26.2017.03.08.06.28.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 06:28:09 -0800 (PST)
Date: Wed, 8 Mar 2017 09:28:09 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: removes redundant
 'continue' in while loop conditional blocks
Message-ID: <20170308142809.GA24891@coolbox>
References: <20170308040328.GA24535@coolbox>
 <alpine.DEB.2.20.1703081014500.3156@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703081014500.3156@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Mar 08, 2017 at 10:15:04AM +0100, Julia Lawall wrote:
> On Tue, 7 Mar 2017, Tahia Khan wrote:
> 
> > Removing 6 continue statements from a while loop. The
> > continue statements are redundant here since control
> > already returns to the beginning of the loop upon exit
> > of any of the conditional blocks.
> 
> Good observation.  How did you find it?
> 
> julia
> 
> >
> > Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
> > ---
> >  drivers/staging/wilc1000/host_interface.c | 7 -------
> >  1 file changed, 7 deletions(-)
> >
> > diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> > index 2429c85..fdd902f 100644
> > --- a/drivers/staging/wilc1000/host_interface.c
> > +++ b/drivers/staging/wilc1000/host_interface.c
> > @@ -3890,7 +3890,6 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
> >  					pNewJoinBssParam->supp_rates[i + 1] = pu8IEs[index + i];
> >
> >  				index += suppRatesNo;
> > -				continue;
> >  			} else if (pu8IEs[index] == EXT_SUPP_RATES_IE) {
> >  				extSuppRatesNo = pu8IEs[index + 1];
> >  				if (extSuppRatesNo > (MAX_RATES_SUPPORTED - suppRatesNo))
> > @@ -3902,11 +3901,9 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
> >  					pNewJoinBssParam->supp_rates[suppRatesNo + i + 1] = pu8IEs[index + i];
> >
> >  				index += extSuppRatesNo;
> > -				continue;
> >  			} else if (pu8IEs[index] == HT_CAPABILITY_IE) {
> >  				pNewJoinBssParam->ht_capable = true;
> >  				index += pu8IEs[index + 1] + 2;
> > -				continue;
> >  			} else if ((pu8IEs[index] == WMM_IE) &&
> >  				   (pu8IEs[index + 2] == 0x00) && (pu8IEs[index + 3] == 0x50) &&
> >  				   (pu8IEs[index + 4] == 0xF2) &&
> > @@ -3918,7 +3915,6 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
> >  				if (pu8IEs[index + 8] & BIT(7))
> >  					pNewJoinBssParam->uapsd_cap = true;
> >  				index += pu8IEs[index + 1] + 2;
> > -				continue;
> >  			} else if ((pu8IEs[index] == P2P_IE) &&
> >  				 (pu8IEs[index + 2] == 0x50) && (pu8IEs[index + 3] == 0x6f) &&
> >  				 (pu8IEs[index + 4] == 0x9a) &&
> > @@ -3948,8 +3944,6 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
> >  				memcpy(pNewJoinBssParam->start_time, pu8IEs + u16P2P_count, 4);
> >
> >  				index += pu8IEs[index + 1] + 2;
> > -				continue;
> > -
> >  			} else if ((pu8IEs[index] == RSN_IE) ||
> >  				 ((pu8IEs[index] == WPA_IE) && (pu8IEs[index + 2] == 0x00) &&
> >  				  (pu8IEs[index + 3] == 0x50) && (pu8IEs[index + 4] == 0xF2) &&
> > @@ -3995,7 +3989,6 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
> >  				}
> >  				pNewJoinBssParam->rsn_found = true;
> >  				index += pu8IEs[index + 1] + 2;
> > -				continue;
> >  			} else {
> >  				index += pu8IEs[index + 1] + 2;
> >  			}
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170308040328.GA24535%40coolbox.
> > For more options, visit https://groups.google.com/d/optout.
> >

I found this using Coccinelle - which I should have noted
in my commit message! Would you suggest revising the commit
message?

Tahia

