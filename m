X-GM-THRID: 6948342597010063360
X-Received: by 2002:a65:644f:: with SMTP id s15mr14667332pgv.323.1618299588785;
        Tue, 13 Apr 2021 00:39:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:c70c:: with SMTP id o12ls1226385pjt.3.canary-gmail;
 Tue, 13 Apr 2021 00:39:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxpdWSl3ghdrL8X24cpTGfbc3kLkO86YhQC8IuZ0LB1iyH+znjs/d2O9/TRdYbZ7GkLZAFa
X-Received: by 2002:a17:902:9b8b:b029:e6:b027:2f96 with SMTP id y11-20020a1709029b8bb02900e6b0272f96mr31488951plp.28.1618299587682;
        Tue, 13 Apr 2021 00:39:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618299587; cv=none;
        d=google.com; s=arc-20160816;
        b=b+Hjxgk5ZVo2eA1ha0XwwcVIn214MAvUG/7ajJhwinDMAaXyI9QmgUvwxbQ41kwrH0
         x8vrECPgfFBLWiWc9mxrRZ4Ebed7YYLKN3r8eJZ7qoiDBZuiW1JS1SsDL8zGrK34HoZK
         55uixpntelvDwz2XOmimPbnSsam/BhRBO287GEhoyrx/LNCAGLa7Qz4YjTniy0lKaqa5
         MN23GVTJnSJJ8SgnVHCmMDL0Qig4CALR7YpREdnZI0K1elbkWTnE2VrhYUmDHcnK3lVN
         tgF5ZaZD9cPYA/Yjrx3B+b46VjUoTAirHe9q+x1KnGOUyzMufgrfNOT+OvKi6cD4I6AM
         frlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Bz9sUy37qcCKO1bJyubXOKEGjQmV6VMgDCJMh0dZkSM=;
        b=dG1BkmJtnFkbmpcYVPeP/uadeOhzO1MdNNir/eblkEadXOCz8B4gKEc01rhXIokPy0
         aL0RXVITWm5eH6UMO/3RzPwi/OBvTgLgX4U1vnSawLc+qMPi1eV1JY58/CbE7syj4QcK
         ar3Gtd50gCIwLXhqBt1OTHtkIP2NUXrA89S/ta5TLNueaOz0oRqU2C6/TAFFIR5s1svp
         wv289nwgwrn4mvdibJ5xmfSQulAgtykMiLXQupIf0qhvtFfd8b35KAr2N2p1qHRNUyMB
         MfpysSQksGr/QpLPpGKut5SlhmZNh4wGCingcGbM+rKDAyYHA2O7YHfGoJQ/JuwfTEYj
         7RQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=jQNwowkn;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p18si470484pgi.3.2021.04.13.00.39.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 00:39:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=jQNwowkn;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id C8B54613B8;
	Tue, 13 Apr 2021 07:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618299587;
	bh=UKLi8N7PpyoP0aTw1Rc06CM25uT52l0anJPWfPBcGOA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jQNwowknv7OnO5LeSWNcWfwmUf3l+pPLdAutNHoLNXy2Zf6aIBOSWhPi7kW15lYXd
	 olyoch2ThrKxUlw853xBL6h+Z06xtJCNPfQzi2ZSQ/zjqae1CyYIIU/x3AqlpcvliM
	 MlLtGG0VH6MoPms7iKfJAKl/frNSs1GcMU0sS5sw=
Date: Tue, 13 Apr 2021 09:39:44 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Remove
 camelcase
Message-ID: <YHVKwEX8CvV7brRg@kroah.com>
References: <20210412210258.8061-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210412210258.8061-1-fmdefrancesco@gmail.com>

On Mon, Apr 12, 2021 at 11:02:58PM +0200, Fabio M. De Francesco wrote:
> Removed camelcase in (some) symbols. Further work is needed.

What symbols did you do this for?  What did you change them from and to?

Be specific, and try to do only one structure at a time at the most,
trying to review 1000 lines of changes at once is hard, would you want
to do that?  :)

thanks,

greg k-h

