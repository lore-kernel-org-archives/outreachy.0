X-GM-THRID: 6669727741418405888
X-Received: by 2002:adf:e702:: with SMTP id c2mr834374wrm.31.1552921538366;
        Mon, 18 Mar 2019 08:05:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6a03:: with SMTP id f3ls2066171wmc.1.canary-gmail; Mon,
 18 Mar 2019 08:05:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyd4lhEEGDHB0Oqo3Y2n8/nVWAxf7JDDXDZ40Z0AwCso+Du1R7askzFyo7FR27So1cjDHWl
X-Received: by 2002:a7b:c449:: with SMTP id l9mr786554wmi.4.1552921537409;
        Mon, 18 Mar 2019 08:05:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552921537; cv=none;
        d=google.com; s=arc-20160816;
        b=NHyXFV1CG1e0WtMukB00/M8xRsLT6R737p/10iejPA/ZPoqWNpJ+h5UV9+qxuLEVN8
         4V3L4735w2hw5fSyAtXxeIsJlV86RTKWTv+x/xxiCsujMxQ98IPsPD/Zg0P3Xs0D7w+k
         4KNnLRsMNKyIP0VqZ0A24IYs9YVGMHUHpVqQA6g++XTRWzpBugxWf9fvg1xoTuuGVl6h
         qt2zVmp8+FnMnzTNJvpNmE6CvBuVPfV7asqrSC9mw21Rgwbu2rw0/vvc+gmTR3cYXYuB
         Os5vB6c/NQoziTzaRcUR9WwCc+3SZLolsFZcNjvyCFVPrMOX9ijiR8Nbbor/B16OCUj+
         0wCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-data;
        bh=mQQTcs0OBTK703G4pKxghmCogKsygXtuLItuxlYAzjk=;
        b=OavhZP2r7K8AbLg12RBSZlcNoD7HN8TNOj03hqBEo4VWyB01P4JwJxXK+Q/SAaD50V
         bDBlU+az5zqtjKd4ePcQzVscTbk4Rw8/1/rlcNI+NhwyzurFx4f+7oNqixzPRD0vAwt0
         J0BqiIX7/5Ga/B4duicnrC/ir63PnSgPkvQJgUVK+PD9z96F3YXxVwf6irE7aBU2DN9B
         co18KmWj3ea3zkhrgRkrTl3kR+XmJRibiF68ShPLiXG5ZcxeoCNgAE4Q2I2rcnbneM4i
         6TtBJU4wIJ/Y9/EfBvhVnmfGs0NJRd1mlCYtat7gkh/o6+K5fIDsKqB7yTxqProEA6A+
         QjOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f185si478498wme.1.2019.03.18.08.05.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 08:05:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
IronPort-Data: A9a23:+dWsTahlbHumHYAuM2S9rReaX17brhtdp/aghKucQGLCcuky6zlmAl
 73relckT8yAz6we5FWFpr1P+vV/WmHIAqD/5gO1FjclZRjGpMKRvINTheZAu5XXlBeNtAvPR
 5gQETJLGUZI3owpgqibsj8VNv2VwAZXpVehW/EpoEI02EQpN4k6igX7g0uUuOIFbSWNp+vZm
 e6T/iRv9mduyV+ANvIDv6dGRnCyZLF8M+n76fVOfmhO9l4CVxC7ATMV/SMwBLAnCOIPIp/LV
 /x/iQzUBJ3jA3p7MMAfst8mmPiupE0YzqHTiqOH6NjDAFMilhHQ6velE4oGcMCvCQDF7ryK6
 My9Winhtjbb/ULECyZewWfa1d1ibP3hDZTg1zia4YiGafRB4HeIXPhk7tdC3qfvWznO+lLjZ
 sFhE03Y373mz2lAwU6jQMRMvpppe41mu4Lr5JkGgwN1uHfcfqIxkHer95Hk/iYyKwqe00uGB
 T02vF4NjTPbP1+GESI+LXJr8sf+jva3wAHFxgE25r127IqVriFzXORt6109xm83zs//NiePx
 JzIugUX2RqjcsOuW0zqtDq9te9xuN9DIKqSkJZaRglUY5OvGha/xOOvPz3i/4aWnBcYeHFqv
 db/Q7H1V6c4Gj4cXLGRwT6+MuK8D+v0Aizin7+jQrOx5uckF0/odNhbNTRMVFymT8U8wKYv0
 +XTa/rgCp3SE0njK8JSVUBK5jXxj36Oe77wCyBm6TordPoFUZW0Jry1eNKcf6L7LVtdpT30Y
 lSx0BW
X-IronPort-AV: E=Sophos;i="5.58,494,1544482800"; 
   d="scan'208";a="299834786"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Mar 2019 16:05:36 +0100
Date: Mon, 18 Mar 2019 16:05:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: gasket: gasket_sysfs.c: Fix
 multiple string split issue.
In-Reply-To: <20190318134950.14056-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.20.1903181601340.3832@hadrien>
References: <20190318134950.14056-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line is not correct.  You need to see what other people have
done to describe the affected files, using git log --oneline, rather than
making something up yourself.

On Mon, 18 Mar 2019, Sanjana Sanikommu wrote:

> Remove string " across the line.

The change looks ok, but the message is not understandable.  You don't
remove anything.  Everything that was in the code before is still there.

This could be "Concatenate a multi-line string constant into a single
line".

> Issue found by checkpatch.pl semantic patch results for gasket_sysfs.c

Just "Issue found by checkpatch" would be fine.  Check patch is a tool
that runs a bunch of perl regular expressions.  There are no semantic
patches involved.  And it is not necessary to mention the file name.  That
is apparent just below.

julia

>
> WARNING:quoted string split across line.
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/gasket/gasket_sysfs.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/gasket/gasket_sysfs.c b/drivers/staging/gasket/gasket_sysfs.c
> index fc45f0d13e87..a2d67c28f530 100644
> --- a/drivers/staging/gasket/gasket_sysfs.c
> +++ b/drivers/staging/gasket/gasket_sysfs.c
> @@ -223,8 +223,7 @@ int gasket_sysfs_create_entries(struct device *device,
>
>  	if (!mapping) {
>  		dev_dbg(device,
> -			"Creating entries for device without first "
> -			"initializing mapping\n");
> +			"Creating entries for device without first initializing mapping\n");
>  		return -EINVAL;
>  	}
>
> @@ -233,8 +232,7 @@ int gasket_sysfs_create_entries(struct device *device,
>  		i++) {
>  		if (mapping->attribute_count == GASKET_SYSFS_MAX_NODES) {
>  			dev_err(device,
> -				"Maximum number of sysfs nodes reached for "
> -				"device\n");
> +				"Maximum number of sysfs nodes reached for device\n");
>  			mutex_unlock(&mapping->mutex);
>  			put_mapping(mapping);
>  			return -ENOMEM;
> @@ -264,8 +262,7 @@ void gasket_sysfs_remove_mapping(struct device *device)
>
>  	if (!mapping) {
>  		dev_err(device,
> -			"Attempted to remove non-existent sysfs mapping to "
> -			"device\n");
> +			"Attempted to remove non-existent sysfs mapping to device\n");
>  		return;
>  	}
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190318134950.14056-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

