X-GM-THRID: 9011949731840
X-Received: by 10.236.13.78 with SMTP id a54mr5186479yha.13.1426862476061;
        Fri, 20 Mar 2015 07:41:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.137 with SMTP id k9ls1574813qge.6.gmail; Fri, 20 Mar
 2015 07:41:15 -0700 (PDT)
X-Received: by 10.236.19.8 with SMTP id m8mr89927970yhm.53.1426862475895;
        Fri, 20 Mar 2015 07:41:15 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si833924pac.2.2015.03.20.07.41.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 07:41:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [31.221.94.139])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 35E2DAF3;
	Fri, 20 Mar 2015 14:41:15 +0000 (UTC)
Date: Fri, 20 Mar 2015 13:21:58 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: p80211conv: Replace
 memcpy with ether_addr_copy
Message-ID: <20150320122158.GA4519@kroah.com>
References: <1426686607-11608-1-git-send-email-ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1426686607-11608-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 18, 2015 at 03:50:07PM +0200, Ioana Ciornei wrote:
> Replace memcpy() with ether_addr_copy() since addresses are __aligned(2).
> The 2 structures are aligned to u16:
> 
> struct p80211_hdr_a3 {
>         __le16 fc;              /* 0    2 */
>         u16 dur;                /* 2    2 */
>         u8 a1[ETH_ALEN];        /* 4    6 */
>         u8 a2[ETH_ALEN];        /* 10   6 */
>         u8 a3[ETH_ALEN];        /* 16   6 */
>         u16 seq;                /* 22   2 */
> } __packed;
> 
> Total size: 24
> 
> struct wlan_ethhdr {
>         u8 daddr[WLAN_ETHADDR_LEN];     /* 0    6 */
>         u8 saddr[WLAN_ETHADDR_LEN];     /* 6    6 */
>         u16 type;                       /* 12   2 */
> } __packed;
> 
> Total size: 14
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
> 
> Changes in v3:
> 	- fixed corrupted patch

Please resend this again, after fixing the obvious build errors with it
:(

ALWAYS test build your patches, to not do so annoys the people you send
them to, as it breaks their workflow, and is a bit rude.

thanks,

greg k-h

