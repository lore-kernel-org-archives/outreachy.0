X-GM-THRID: 6210381585761435648
X-Received: by 10.66.148.233 with SMTP id tv9mr718197pab.7.1446115242611;
        Thu, 29 Oct 2015 03:40:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.66.201 with SMTP id h9ls94360obt.28.gmail; Thu, 29 Oct
 2015 03:40:42 -0700 (PDT)
X-Received: by 10.182.251.230 with SMTP id zn6mr720035obc.8.1446115242091;
        Thu, 29 Oct 2015 03:40:42 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id iz5si70561pbc.2.2015.10.29.03.40.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 03:40:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id hy1so31585720pad.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 03:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=c5A8cunZx3VNa+KD0TTUJxzhSxra4Dfmln1nfghnHZE=;
        b=Q9W2ClMNyR5Z9i0+SYCarVE1oadc1x0tX8KEX+G7DHOzf+uVCEvN/FAejHupai4hDh
         a5OBYZMVPzWenTmxY80kkAUEz7Kwaq9hkEqCjfjqiq8utFL6sLyDOCs0tfBhm65jtco6
         tUjF6fyYMPNO2A4pJUkva2PiAElyPMYM7ChC68VAKJJJSUjVEgfF8aC72BWS2rR5T0Wt
         jf6dGZ7QJ3aBmoSGMEezO+PVX+micjBRpnlvHXJo/Q8QkiCH+WSzyl5Lz2WiNII7gQhz
         iTCwvHsWVXY31Bz0aiOQdNtoEsAJ7WTu7ebZIgq/NO7n24hT+cz1OUWFdCkjsTzhgSUW
         V/Xg==
X-Received: by 10.68.131.36 with SMTP id oj4mr1134236pbb.141.1446115241939;
        Thu, 29 Oct 2015 03:40:41 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.170.95])
        by smtp.gmail.com with ESMTPSA id tt7sm1537672pab.45.2015.10.29.03.40.40
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 03:40:41 -0700 (PDT)
Date: Thu, 29 Oct 2015 16:10:34 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] staging: rtl8188eu: core:
 Remove wrapper function
Message-ID: <20151029104034.GB1331@sudip-pc>
References: <cover.1446098996.git.amitoj1606@gmail.com>
 <9efda1f2e9d8126a6d0468e442ff68aa27031e25.1446098996.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9efda1f2e9d8126a6d0468e442ff68aa27031e25.1446098996.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 29, 2015 at 11:52:35AM +0530, Amitoj Kaur Chawla wrote:
> Remove wrapper function issue_probereq() that can be replaced by a
> single line of code and rename _issue_probereq() to issue_probereq().
> 
> This patch also fixes line over 80 characters checkpatch.pl warning.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>         -Renamed _issue_probereq() to issue_probereq()
> 
>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 41 ++++++++++++++++-----------
>  1 file changed, 24 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> index 0270755..d3b92c5 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> @@ -608,7 +608,7 @@ static void issue_probersp(struct adapter *padapter, unsigned char *da)
>  	return;
>  }
>  
> -static int _issue_probereq(struct adapter *padapter, struct ndis_802_11_ssid *pssid, u8 *da, int wait_ack)
> +static int issue_probereq(struct adapter *padapter, struct ndis_802_11_ssid *pssid, u8 *da, int wait_ack)

Not related to your patch. But maybe in a later patch you can change 
int wait_ack to bool wait_ack, as it is only taking true and false as
its argument.

regards
sudip

