X-GM-THRID: 6522835256508153856
X-Received: by 10.28.87.194 with SMTP id l185mr1059070wmb.9.1518716814656;
        Thu, 15 Feb 2018 09:46:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.26.132 with SMTP id a126ls160322wma.1.canary-gmail; Thu, 15
 Feb 2018 09:46:53 -0800 (PST)
X-Google-Smtp-Source: AH8x2240gMxCFVRVM6QMhfZio8q49pMl65gjCoHxRF83oy15mDbcXs2ZO5uVRFvCIutldHUbH3Fz
X-Received: by 10.28.194.193 with SMTP id s184mr952461wmf.7.1518716813584;
        Thu, 15 Feb 2018 09:46:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518716813; cv=none;
        d=google.com; s=arc-20160816;
        b=O0ZqzZHhdWLVW1TmWDkzQY6PRWqDffm4xmORSUgFLu9rZzoFqf4dtRwzegTI4oTIaz
         SUEm631YqIB9tAF0Rd8DojC+CLCxQOvoWnxTxgSDFtVTd6EQ4kY17zXzxU/rR8Iyqkk2
         ie/4tdnQU5Y763dxFm6FQL/q44lLjB5kj3jRDkPY+wsin0uQHQndq2CCOkJlOXz0D/wW
         Ui/MqBKBbl9ryvidpgySCjs4OwHZnIdVWdhE22uWLJIReUz6w9Z+vmGJPTGnBdFTkNFR
         QLZP6oqy1KuNhUOQ1H2wh5vlO233NzxtfJk+sMFwMwm895fFkvexDYJD6GYzPPM0ZyKc
         P5ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=s4BtZzd2HoF9+i5ocEJapjjIySJ4CrnFyO1NFqy5PU8=;
        b=xmRdkpiTwNUyHQiJTSmulirEUC2zntXMjB7Ff61FYhUWA1lICU3egoieerFHdNlRj6
         0iMx2rMpW5jcmvKsa92Ix+U210l4uSRQ4etoRRUg8h3V6Zo2HQgxHSPv9+IHAdGMqpoU
         PXgjP4iBLaoGmpmOTddwBy6F5xri0xsi4BPzHJzKYYOL5YlkfdzoojFzeo9fK7AUQ6jF
         LB15UOYxevtyFZvYyrrRDfwWN9JyIwY/O3HDnyQ8hlVAnzSWF/8lecFEo+FFW/WMlEf4
         skAdHW3n37OB8bxppZcsYDXxp/+6cKZm2u01LeJijyNRfAVg7aVML7x5XdGwJwOFdxwy
         c2WA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id i75si573508wmg.1.2018.02.15.09.46.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Feb 2018 09:46:53 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [37.169.103.153])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 932711009;
	Thu, 15 Feb 2018 17:46:51 +0000 (UTC)
Date: Thu, 15 Feb 2018 18:46:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Dafna Hirschfeld <dafna3@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] who to send first patch to
Message-ID: <20180215174650.GA4579@kroah.com>
References: <a8ea6283-061c-4172-a7c1-e2a7e99d46f3@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a8ea6283-061c-4172-a7c1-e2a7e99d46f3@googlegroups.com>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Thu, Feb 15, 2018 at 09:32:11AM -0800, Dafna Hirschfeld wrote:
> Hi,
> I follow the first-patch <https://kernelnewbies.org/Outreachyfirstpatch> 
> tutorial.
> When running the get_maintainer.sh script, I get Greg Kroah-Hartman 
> <gregkh@linuxfoundation.org>.

That's it?  Just me?

> Should I send the patch to this mailing list and add the maintainer as a 
> CC, or should I send two separate mails, one to this mailing list and one 
> to the maintainer ?

Put the maintainer(s) on the To: line, and the mailing list on the cc:
line.

Hope this helps,

greg k-h

