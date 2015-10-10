X-GM-THRID: 6203527091850313728
X-Received: by 10.140.165.83 with SMTP id l80mr14417516qhl.14.1444460446672;
        Sat, 10 Oct 2015 00:00:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.234 with SMTP id i10ls823854obe.63.gmail; Sat, 10 Oct
 2015 00:00:46 -0700 (PDT)
X-Received: by 10.182.106.228 with SMTP id gx4mr14349643obb.34.1444460446324;
        Sat, 10 Oct 2015 00:00:46 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id el2si594739pbb.0.2015.10.10.00.00.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 00:00:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id ex6so106953762pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 00:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ZaARLHUPyfLtGIzbLPqRpvZfTTCoGvdPM25gE1ObAq8=;
        b=LOYzOljfllb3MvDgXaCBpUUVPrXmRzpksLIfNV/K5ZACqXgMnmcliYRoQT/LvGMRc8
         +7H/4nFNa2PdTS1CMGY38hwqwID5vuJxxqz05kMVr4sf1svmuCd6DWaz3X1qBn53ATuY
         n0lUUSB6MqFypZ2MBKsWxHRAe+Ifu0vjoMCejn6UIlKz12fMSKPo866yWWD/zN4DIIbs
         j1iHetG/QtRs6heriuAMNnWgt9fC9u8/Mskfe1r/jbHZm0+KO7w1gIZq7G1SV5RqLCx7
         BdqLfugPiJdtUCsh8JZbm2zdDDsM/ULpAj4ysgxc2+ftqaJ/y8cGDKZi73VISTP2TtjR
         JCTw==
X-Received: by 10.66.144.165 with SMTP id sn5mr20986721pab.122.1444460446025;
        Sat, 10 Oct 2015 00:00:46 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id bo5sm6200766pbb.76.2015.10.10.00.00.44
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 10 Oct 2015 00:00:45 -0700 (PDT)
Date: Sat, 10 Oct 2015 12:30:34 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: gdmwm: move constant to
 right side of comparison test
Message-ID: <20151010070034.GA4795@sudip-pc>
References: <20151009061314.GA31693@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151009061314.GA31693@Ubuntu-D830>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 08, 2015 at 11:13:23PM -0700, Alison Schofield wrote:
> Move constant to right side of comparison test per checkpatch.pl:
> WARNING: Comparisons should place the constant on the right side of the
> test
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/gdm72xx/gdm_wimax.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/gdm72xx/gdm_wimax.c b/drivers/staging/gdm72xx/gdm_wimax.c
> index 6e8dbaf..69f00cc 100644
> --- a/drivers/staging/gdm72xx/gdm_wimax.c
> +++ b/drivers/staging/gdm72xx/gdm_wimax.c
> @@ -581,8 +581,8 @@ static int gdm_wimax_get_prepared_info(struct net_device *dev, char *buf,
>  		}
>  
>  		pos += gdm_wimax_hci_get_tlv(&buf[pos], &T, &L, &V);
> -		if (T == TLV_T(T_MAC_ADDRESS)) {
> -			if (L != dev->addr_len) {
> +		if (TLV_T(T_MAC_ADDRESS) == T) {

Is it correct? T and L are variables which are getting its values from
gdm_wimax_hci_get_tlv(). TLV_T is a macro which is ((x) & 0xff).

Do we use it like:

if ((T_MAC_ADDRESS & 0xff) == T)

or do we use like:

if (T == (T_MAC_ADDRESS & 0xff))

regards
sudip

