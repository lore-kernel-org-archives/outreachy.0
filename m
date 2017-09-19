X-GM-THRID: 6467212349549838336
X-Received: by 10.25.229.18 with SMTP id c18mr41065lfh.1.1505802908031;
        Mon, 18 Sep 2017 23:35:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.211.207 with SMTP id k198ls1947770wmg.21.canary-gmail; Mon,
 18 Sep 2017 23:35:07 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCfgQPkdLvpcuYbBfykjSF3TLcyZ/NBmOl/S0xfqXqEpnrLbA8ASjyz+GktrHgQ+QbzEUEf
X-Received: by 10.223.196.139 with SMTP id m11mr19852wrf.30.1505802907159;
        Mon, 18 Sep 2017 23:35:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505802907; cv=none;
        d=google.com; s=arc-20160816;
        b=BOKHxEww45lRdiVqKZdoHrx0i5Vx1dWN1zOcxcI1PiziEBYc0sxR7IOxgED0TWjw4t
         JmkUR1gl68dKJqbu0nbS/zXAaQvanmno+ttzRtPKn8ybUgUuGc2MiKFmswhguWPs5CYu
         t5bmu/wR02/LgAsOFgB+E/3c/kJ8gEio12Bm+EM2SDri6wcIv+rLPEopDZScXkIRI9ry
         TO5TCDME5znY3nTrCJf/PRyYbnNOqij9A+c0H342o0XGFRzLmACEy5MavgNsVE5I4PHl
         yNuK0hQ+OOJOC1cjoVHJWPblEYI33pYA7nJEObcBZwJJUrO707lTCa1DxppdOOixdzfa
         wHyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=uoQRoCAEoUtVCzOy8ztNooXcjE2JeZirf4V7BgP8r+w=;
        b=P2rowD0Nw/rbH+ofc0Y6CGvwbpKTPBbeaRO8WKkaxpc5NjlN07fkovwaccVnmageCO
         NkNzmH3wxRg1meID/3wbhbt6Bi9NHcLVZn06m6kdJuD5mozR6rv2eGo98S0EpZMEcN+i
         xKkyzDs2SExuih00uPZR6zEaqPNCvspRgbISBd6hFPKayfGqOXkOG/QQXNB4TwCCXsTH
         pwUzFQNwmRiHyGMvq6u3n/yZpY4VrTVU6Avs4BhGJLs9+rxfF4fANhGhxcaG/gyA6YLz
         paZKe/3CpWlkLQHaTk5ngiSdrTwZ3N7/TaQ9FmK6Lg1CjaNFU3hPvJ8+ZoRK+K0noYXF
         qi2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id p70si86164wma.1.2017.09.18.23.35.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 23:35:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 77F5E8E3;
	Tue, 19 Sep 2017 06:35:05 +0000 (UTC)
Date: Tue, 19 Sep 2017 08:35:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	mchehab@kernel.org
Subject: Re: [PATCH] Staging: media: atomisp: pci: Fix style issues
Message-ID: <20170919063516.GA7626@kroah.com>
References: <20170918200649.vpfscgyeuibkvifi@fireworks>
 <20170919061019.GB1628@kroah.com>
 <CALta04zm+not=rSAykTa43fvv=hPX8w3nA9SpsGWtkjjyEPWwA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALta04zm+not=rSAykTa43fvv=hPX8w3nA9SpsGWtkjjyEPWwA@mail.gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)


A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Tue, Sep 19, 2017 at 09:29:18AM +0300, Georgiana Chelu wrote:
> Thank you for reviewing it! I am thinking to resend it as a
> patch set because all the fixes are related to a single file.
> Is it OK?

Yes, a patchset would be great, and the correct thing to do here.

thanks,

greg k-h

