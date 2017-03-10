X-GM-THRID: 6395922242043117568
X-Received: by 10.157.67.134 with SMTP id t6mr8510176ote.83.1489181273078;
        Fri, 10 Mar 2017 13:27:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.138 with SMTP id g132ls2836020ioe.5.gmail; Fri, 10 Mar
 2017 13:27:52 -0800 (PST)
X-Received: by 10.99.139.202 with SMTP id j193mr5792855pge.151.1489181272322;
        Fri, 10 Mar 2017 13:27:52 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r66si1951912pfb.7.2017.03.10.13.27.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 13:27:52 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AEC8E360;
	Fri, 10 Mar 2017 21:27:51 +0000 (UTC)
Date: Fri, 10 Mar 2017 22:27:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Doubt regarding use of a function
Message-ID: <20170310212742.GA11308@kroah.com>
References: <CAKG5xWiq5T9fgTpnb2vtCwFv4HrBnyBBtYGTpp1_zUS5k-Gq_g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKG5xWiq5T9fgTpnb2vtCwFv4HrBnyBBtYGTpp1_zUS5k-Gq_g@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Fri, Mar 10, 2017 at 10:54:10PM +0530, sayli karnik wrote:
> ieee80211 has the following function which to me does nothing-
> void ieee80211_tkip_null(void)
> {
>      printk("============>%s()\n", __func__);
>      return;
> }

What exactly directory/file is this?

> Before its function call there is this comment-
> /* These function were added to load crypte module autoly */
>          ieee80211_tkip_null();
> 
> Is this function needed in the driver?

Yes, the function says what it is there for.

> If not, can I send in a patch removing it?

If you do, you have to fix the auto-loading of the module properly :)

thanks,

greg k-h

