X-GM-THRID: 6208143559134019584
X-Received: by 10.180.210.212 with SMTP id mw20mr8007395wic.3.1445503082673;
        Thu, 22 Oct 2015 01:38:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.41.4 with SMTP id p4ls280578lfp.58.gmail; Thu, 22 Oct 2015
 01:37:59 -0700 (PDT)
X-Received: by 10.112.173.170 with SMTP id bl10mr3344036lbc.7.1445503079868;
        Thu, 22 Oct 2015 01:37:59 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id em5si196414wib.2.2015.10.22.01.37.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 01:37:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id p11so19007733wij.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 01:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=gbK1Lja0pyyk9AVH2y7k6UCJu1Ikl4saZD5pmTk56AE=;
        b=MoVBU+ItSb1iDJGjU/NONToLDovXQ8ZN7AmdOZHWMl9eq9E1dLrTx32Y51562fqNrG
         AqfyD0jDvtg4npMllRvcvFz1KxmHxCJ9dIj0TTGJcoAruPhjk546woUxhqaOGtjjqWnG
         st60FAImYLL1uIRNx8y0PEVyQktZUi5Wq1rkbD7pSDlzNFjbZ5Xsm995QD8fK2IX3yw/
         yg4LUCwoMti1sJAv+PjTJjl9dXP1WbSCxQusSIKvtEYtE9hL3RrVzaagcHkECw5oka9k
         3WqP7otSaOPoTNR6vtb0TfQFthnJyFL46jwAI9a3l5RllAVzDDUfg+3jHapwJt/hEzm4
         TcPw==
MIME-Version: 1.0
X-Received: by 10.180.86.231 with SMTP id s7mr37603770wiz.15.1445503079707;
 Thu, 22 Oct 2015 01:37:59 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Thu, 22 Oct 2015 01:37:59 -0700 (PDT)
In-Reply-To: <b2831ecccc09c2e69d330c453f911d8a0ae61e0f.1445445320.git.navyasri.tech@gmail.com>
References: <cover.1445445320.git.navyasri.tech@gmail.com>
	<b2831ecccc09c2e69d330c453f911d8a0ae61e0f.1445445320.git.navyasri.tech@gmail.com>
Date: Thu, 22 Oct 2015 11:37:59 +0300
Message-ID: <CAEnQRZBqVWVHtc_pRUemU-6qZMmbD90TzuGsWe-5Xuh63mXG2A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/5] Staging: xgifb: Add space between
 ; and variable name
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 21, 2015 at 7:48 PM, Navya Sri Nizamkari
<navyasri.tech@gmail.com> wrote:
> This patch fixes the checkpatch.pl error:
>
> ERROR: space required after that ';'
>
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/xgifb/vb_init.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
> index ea358a0..6204a98 100644
> --- a/drivers/staging/xgifb/vb_init.c
> +++ b/drivers/staging/xgifb/vb_init.c
> @@ -10,7 +10,7 @@ static const unsigned short XGINew_DDRDRAM_TYPE340[4][2] = {
>         { 16, 0x45},
>         {  8, 0x35},
>         {  4, 0x31},
> -       {  2, 0x21} };e
> +       {  2, 0x21} }; e

Hmm, something went wrong here :)

Please edit the file and remove 'e' after ';'. Otherwise, your code
wouldn't even compile.

thanks,
Daniel.

