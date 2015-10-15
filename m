X-GM-THRID: 6205554058197991424
X-Received: by 10.13.228.133 with SMTP id n127mr6092123ywe.37.1444892506983;
        Thu, 15 Oct 2015 00:01:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.76 with SMTP id f73ls286912iod.24.gmail; Thu, 15 Oct
 2015 00:01:46 -0700 (PDT)
X-Received: by 10.107.165.5 with SMTP id o5mr6787592ioe.5.1444892506629;
        Thu, 15 Oct 2015 00:01:46 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id ce6si732477pad.0.2015.10.15.00.01.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 00:01:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabrc13 with SMTP id rc13so78803457pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 00:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=jOTIaZnk7yeBr+j9iCiPK17RM10jJ0nxdaRPpf3MLVk=;
        b=rzhHAgePi1V3jVWkPy6OnBeAeOGWffzyD+ILHRHh8nqzR0cj3W/XVWMdwZdwGY+yr4
         8XXq1kBgvHp4dpbp0ZuHRHfdi6sx2P2ST1TnqET7wafgfBxVY3MApCoXvF0k0sdftfMf
         ykA1ivw71rfts0I3sHrB8y9Y8YjsV3pkWYOeJcucqba1puoUoQW3lPa6WFI7WL0NVA7a
         r01gEMrIFrwBXnDhuz7GouT+GBHSFsOdHUY9iEKxiumfBlDsN9wlR7pR/jGUO6PwVzSU
         ZHgYpQmwS3Z3vlUMfkKJorcpfD5Liv77pJ1lRUe4pCSP3Yn7f0lXfCYVp/WKEWoRGZNf
         zQlQ==
X-Received: by 10.67.4.9 with SMTP id ca9mr8327649pad.90.1444892506458;
        Thu, 15 Oct 2015 00:01:46 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.135.176])
        by smtp.gmail.com with ESMTPSA id ey17sm13416659pac.26.2015.10.15.00.01.44
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 00:01:45 -0700 (PDT)
Date: Thu, 15 Oct 2015 12:31:38 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211_rx:
 Remove unnecessary code
Message-ID: <20151015070138.GD3134@sudip-pc>
References: <20151014171850.GA19220@ubuntu>
 <20151015065035.GC3134@sudip-pc>
 <CAKHNQQHwsnzcxqvkTS-TVwZXOp5OLOADndP0V6wLJJnFTaY9EQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKHNQQHwsnzcxqvkTS-TVwZXOp5OLOADndP0V6wLJJnFTaY9EQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 15, 2015 at 12:22:35PM +0530, Shivani Bhardwaj wrote:
> On Thu, Oct 15, 2015 at 12:20 PM, Sudip Mukherjee
> <sudipm.mukherjee@gmail.com> wrote:
> > On Wed, Oct 14, 2015 at 10:48:50PM +0530, Shivani Bhardwaj wrote:
> >> The variable frame_authorized is declared and mentioned in the code but
> >> is not used anywhere so, it should be removed. Also, two case statements
> >> are merged by removing an extra break.
> > <snip>
> >> @@ -1106,10 +1105,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
> >>               switch (hostap_handle_sta_rx(ieee, dev, skb, rx_stats,
> >>                                            wds != NULL)) {
> >>               case AP_RX_CONTINUE_NOT_AUTHORIZED:
> >> -                     frame_authorized = 0;
> >> -                     break;
> >>               case AP_RX_CONTINUE:
> >> -                     frame_authorized = 1;
> >>                       break;
> >
> > Just a doubt, it now becomes:
> >         case AP_RX_CONTINUE_NOT_AUTHORIZED:
> >         case AP_RX_CONTINUE:
> >                 break;
> >
> > If these two cases are not doing anything then what is the use of having
> > them here in the switch-case?
> >
> > regards
> > sudip
> 
> Because we don't have a default case here and the variable in switch
> might still get these values based on some other code.

I think default case is to handle all cases which are not given by case
statement. What will happen if variable gets these values but these
cases are not mentioned? switch-case will see that these cases are not
mentioned and will exit the switch-case. In the situation where these
cases are mentioned, switch-case will see these cases exist, will come
to these cases and breaks out of switch-case.
Am I understanding anything wrong here?

regards
sudip

