X-GM-THRID: 8176518823936
X-Received: by 10.182.47.228 with SMTP id g4mr72460124obn.5.1426608401057;
        Tue, 17 Mar 2015 09:06:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.253.2 with SMTP id zw2ls1359760igc.41.canary; Tue, 17 Mar
 2015 09:06:40 -0700 (PDT)
X-Received: by 10.66.221.165 with SMTP id qf5mr70786872pac.30.1426608400713;
        Tue, 17 Mar 2015 09:06:40 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x231.google.com (mail-qc0-x231.google.com. [2607:f8b0:400d:c01::231])
        by gmr-mx.google.com with ESMTPS id z1si1705759qcn.2.2015.03.17.09.06.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 09:06:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::231 as permitted sender) client-ip=2607:f8b0:400d:c01::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::231 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x231.google.com with SMTP id i15so12899839qcy.0
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 09:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=MFXfChZUmIWvpgmQS/ftaas+zubJLi5+JJUOXnnVnhQ=;
        b=HQB+shCBTI6VlpGHwyRZwa5Y5npYH8sCbxrslo7GVSo4XDhTOSm9HiV6s83iv+kTo2
         fyZbcxH1H+iVeuAA/pRcW4dzoJaYdN8kWDx8GIgk/L4zYvM7eKmsEC36gdCl/y1O+kFT
         jkAT+y4xhbezc3odHCd+WmyW6NEomzS4GaMGFvY+kgk8kSkSehaaCfyTJlqYdjvgOTGA
         LgEoR9dLlupr6nfj08otDZWvBr5eSt9W9VdhnHdrN/l+MK/IU3KbXJFNCU5roKBNUH02
         vWYw1xTm4mLthN7UrEpqMG02dQGWbpvjN4BoEfI0fs8HasPh7KyU/0DYL+6TGmawgmpY
         92/w==
X-Received: by 10.140.97.98 with SMTP id l89mr81167977qge.87.1426608400598;
        Tue, 17 Mar 2015 09:06:40 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 8sm9850792qhr.32.2015.03.17.09.06.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 09:06:40 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <5508510F.2080504@gmail.com>
Date: Tue, 17 Mar 2015 12:06:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Haneen Mohammed <hamohammed.sa@gmail.com>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/8] Staging: rtl8188eu: Remove parentheses
 around right side an assignment
References: <20150313165555.GA6673@haneen-vb>
In-Reply-To: <20150313165555.GA6673@haneen-vb>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/13/15 12:55, Haneen Mohammed wrote:
> Parentheses are not needed around the right hand side of an assignment.
> This patch remove parenthese of such occurenses. Issue was detected and
> solved using the following coccinelle script:
> 
> @rule1@
> identifier x, y, z;
> expression E1, E2;
> @@
> 
> (
> x = (y == z);
> |
> x = (E1 == E2);
> |
>  x =
> -(
> ...
> -)
>  ;
> )
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_efuse.c         |  6 +++---
>  drivers/staging/rtl8188eu/core/rtw_ieee80211.c     |  2 +-
>  drivers/staging/rtl8188eu/core/rtw_mlme.c          |  2 +-
>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c      | 22 +++++++++++-----------
>  drivers/staging/rtl8188eu/core/rtw_recv.c          |  4 ++--
>  drivers/staging/rtl8188eu/core/rtw_sreset.c        |  2 +-
>  drivers/staging/rtl8188eu/core/rtw_wlan_util.c     | 18 +++++++++---------
>  .../staging/rtl8188eu/hal/Hal8188ERateAdaptive.c   |  4 ++--
>  drivers/staging/rtl8188eu/hal/odm_HWConfig.c       |  2 +-
>  drivers/staging/rtl8188eu/hal/phy.c                | 20 ++++++++++----------
>  drivers/staging/rtl8188eu/hal/rf.c                 |  2 +-
>  11 files changed, 42 insertions(+), 42 deletions(-)

Patch looks good, but there is something weird with your mailer. You are
setting 'Reply-To:' which is a huge no-no, in addition it's pointing to
an invalid email address.

Cheers,
Jes


