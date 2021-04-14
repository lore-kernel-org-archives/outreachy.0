X-GM-THRID: 6950980105413853184
X-Received: by 2002:a67:f945:: with SMTP id u5mr24855146vsq.2.1618402698300;
        Wed, 14 Apr 2021 05:18:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:7550:: with SMTP id k16ls162934uaq.11.gmail; Wed, 14 Apr
 2021 05:18:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzOlOhUZSl75C05dG7UZLq6+txuXH/9ZiJ5uCxtcLLP+gnGCmWnOuccxuNf8c4skmccvsou
X-Received: by 2002:ab0:73ce:: with SMTP id m14mr21841528uaq.94.1618402697170;
        Wed, 14 Apr 2021 05:18:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618402697; cv=none;
        d=google.com; s=arc-20160816;
        b=nuPtZj8qos7fMt0hq/0ELTdoxtuP7PRo+uB0FX3u5hBCsfBsbNOPrNrA/n344Ai7PA
         oVoRDz9KsrZItQH5mawY1187wsLludmwtdQzHO0Tf96jxF5F/M7rGgfAgTPMb/6mr0zb
         IsB8JTFpIQmrwlhkEcr4NjaeLnTroEkhB40JlrynG+Njl3iOAQvHBY9dLmSmNkB/7lRW
         lbCZXGzN/3ykDq/zE6PPVhpdlFjvcTVePpANUYeLHcxMxCtVzETUHyeyo84kuCvqUkQE
         THU7VdcLM4sLje8ubIXSdfEoaPz7j6hNcI/1rEacBX91JeE700fs70JkC+/qCcBsHe4k
         uDZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OPcjqNdzzmVKUtSeoSQvBsemC1aF2ZndqDvx1L+B4/c=;
        b=GTyENCNhSKVGWvr1ioLL2EOwej1CZ6owIAf1x6L4WttOA1rXH1mojtYDQqC9gugoud
         8fLZU357xHx9QS8+fhMEqYNyrs4jPKNZsKUhxUsXT2GpU9Cne5KbS5RDqipPvfbIoCy9
         FzmdTX6O+B+ptfKMJnC/lYngQqxMjC3ePDU4+N2m02AKZYwC1qthvFbV6cNV3AfXeubM
         p4q0Y/mcS3+ezs1YwvIYTNSVPBkiX1PDO7wj8BPUyxl+sdCKBw7iaHN78X13TmSj2O5q
         RfHMaAMBWtfgX5R5qhPLR4FPEUJhuWFkjMkNq6Jo29oFInGvr7XzMBlxrNCsLuXdoMwL
         qLEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="zY/OJh+T";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y15si794632vsn.1.2021.04.14.05.18.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 05:18:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="zY/OJh+T";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5E2BA6105A;
	Wed, 14 Apr 2021 12:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618402695;
	bh=iM0+Dta8yMlWylk4cz0KlfODBJXgiJ9qnCkX9y5oV6w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=zY/OJh+TYGTHOs5juL0tx0Q7ekvRf4Ahdaj5nu4iur2apSW4grbN3ph6GoTkrQ4M+
	 83/M5gIDW7M9q+cFb/rwVQm8kj2d8Y39aD4qa03w/7q+hGojA1uGCVxwnW53bpYw7y
	 M9jJA2Xu8U+ejE2Y77JrtEWxkBMNpx0FNB9t5+b4=
Date: Wed, 14 Apr 2021 14:18:13 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
	Julia Lawall <julia.lawall@inria.fr>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove useless
 led_blink_hdl()
Message-ID: <YHbdhT8z11rd6okI@kroah.com>
References: <20210414115243.32716-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210414115243.32716-1-fmdefrancesco@gmail.com>

On Wed, Apr 14, 2021 at 01:52:43PM +0200, Fabio M. De Francesco wrote:
> Removed the led_blink_hdl() function (declaration and definition).
> Declared dummy_function() in include/rtw_mlme_ext.h and defined it in
> core/rtw_cmd.c. Changed the second parameter of GEN_MLME_EXT_HANDLER
> macro to make use of dummy_function().

No no no.

If you want to remove is function declaration and use, then do it
properly.

The code is crazy, I agree, but it should not be difficult to just
remove this correctly instead of papering over this mess.

Also note that no one actually calls this function if you look at the
logic here.  It might take some good knowledge of C to unwind this crud,
but once done, you should be able to "prove" it's not called and how to
remove it correctly.

And no, I'm not going to say how to do it, that's an exercise best left
for the reader.  But I will hint that this was done in the past, in
2014, in another driver in the tree with a codebase much like this one,
so it shouldn't be hard to find an example of it.  Only took me a few
minutes...

good luck!

greg k-h

