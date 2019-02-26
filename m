X-GM-THRID: 6662260493008240640
X-Received: by 2002:a25:6783:: with SMTP id b125mr8411500ybc.1.1551178398237;
        Tue, 26 Feb 2019 02:53:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4c4:: with SMTP id 187ls4082290ybe.11.gmail; Tue, 26 Feb
 2019 02:53:17 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaowrtM5PYf0LT4q07wI0p4Y0sF/Jkl9te8/9PCIfAl07+6nP1YPcT95no6G7ndJH8osERV
X-Received: by 2002:a5b:d04:: with SMTP id y4mr8331045ybp.13.1551178397408;
        Tue, 26 Feb 2019 02:53:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551178397; cv=none;
        d=google.com; s=arc-20160816;
        b=MVZ2+JAYpi4WGncf0tnYskdouDrIMMuEC2Cdoo2tiPsulpHoq/Ch3i4WxCSgyeis9I
         PiV1gakqieRXXi3le+S7qa3U9bqhsyHDvmTIgvnNnrq3KL/1BXcCzHhhdklYRt2oKGQE
         WcpLQ2rTUo0tsQ8L27PBeEYFVnaYuMWt83c+tB5i63xD/TwqgWlOMlHJOp+Trrs1Xf3C
         T9ZWdegxK1xS4JiDEBzHEpQN0Bn6dlN3+dnH1WDlMbcyytte6HalXM+grEym9H9PgWF3
         w+kOcE+ZY3TJaBLT8tIV4lTtsk1hakyeeQM+VWSLkctHOYNjFwkdGEL6iTOWwpiv1p5d
         1tXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
        b=PxDUA8L0wHU2bRRPKWm3B040sNj1+LM3aRyIuNsXDLzcTZ2Ed7zLZhyAn9vDO0CAnw
         ln1f8UGTd2yKnXLnyE+ixj64bwjLcYwiEvtdkYevqDe1CTEg1WIGj+Yqs56rN6tfstCG
         SCD/DvGqMGtie/j5COxi5LnODJZdc7Mpnn4tTRWgiYJs0WysOxWebo25Agsq3UdkfcmD
         4ajwcqPmW1kRkkaXMhbM4HJbmxCkoN3UIEMQXjEOL7x8NHS4nIgMOi+XR6wbMCR5Eh2n
         +F8SHgYndfBPqdlbvs5VOxwqypC/1kHrl4pfZfBcYKE/OJ0yzPFqAJPla1Jq8jh/XKc8
         5o2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mpXUIJZ8;
       spf=pass (google.com: domain of srs0=gmmv=rb=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=GmMv=RB=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=GmMv=RB=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j16si397310ywa.2.2019.02.26.02.53.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Feb 2019 02:53:17 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=gmmv=rb=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mpXUIJZ8;
       spf=pass (google.com: domain of srs0=gmmv=rb=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=GmMv=RB=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DBD4F2173C;
	Tue, 26 Feb 2019 10:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551178396;
	bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
	h=Date:From:To:Subject:From;
	b=mpXUIJZ8+e5vpwjt+PgF2+17wJbi0Bi5D5GnDNY1l60fg9Wsyu+o/zjeznINwgFsE
	 +qJBGmfcdPf6YzTzQMkw3gXqwMUtXsv2lLNc5KMKPZwqhojEPw2S/G8OIqw64o1N17
	 tZwv8n0kqOE1G+BCf2TZstZhQj3FwpnoGS5vvVqU=
Date: Tue, 26 Feb 2019 11:53:13 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on.
Message-ID: <20190226105313.GA30444@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.11.3 (2019-02-01)

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

thanks,

greg k-h

