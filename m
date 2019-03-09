X-GM-THRID: 6662260493008240640
X-Received: by 2002:a25:9204:: with SMTP id b4mr11210305ybo.21.1552127437696;
        Sat, 09 Mar 2019 02:30:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:cd0a:: with SMTP id d10ls774460ybf.8.gmail; Sat, 09 Mar
 2019 02:30:36 -0800 (PST)
X-Google-Smtp-Source: APXvYqzuhyQ6/mBHB5IqVmJv4x3x+BJC242jhYqJ6O/tryn/O8+Nhv6J04H5Cfj8z0hr/qKIAu9g
X-Received: by 2002:a25:dfc6:: with SMTP id w189mr10386879ybg.63.1552127436800;
        Sat, 09 Mar 2019 02:30:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552127436; cv=none;
        d=google.com; s=arc-20160816;
        b=zg5urCzC6Gkh1ot8z73ve4RJjLYfmr52CSoti52sCNmnJduDxzH5TlHOy/OAxPMT//
         R5rxVN1Bmx4Vt3Vqn88qh5iTjIqUIEJYj4GhdviDC+UxUxgnNIgCIkS3GkKpyiPMvTwy
         lF5yNjKSyb9o8cB/XF9Xw49XDxrqh73yuZxLdT4mmhjqRXhoXluDTGGLQBrCMc3ueE1F
         b34k31HSOw2mvepXxiCw+S4jgFDKN0jWbS2szX9OuI820J7ZIoc3jB83RuPVW7YEXdS6
         vQ8YdAmAUi2PFbUJGhK8o/DdwELD9fcLT/H32GycrNECD4o8mFEBE5tMON7QP+n2kRz/
         dyrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=90j1+LXfcUDxTskSydmNsa9pU4H4gZBxCb0BSsmYdEQ=;
        b=oTAMHCNGR8fYMq3FDBeBIV0z4uI5I1bpODtf443BVDzK1ZQ0GY5YzNEZTug6YTx5KF
         Vo1x1r6K5RIGTOB8VIby3aJ80rlPzdJzBlqAFmJByegXc5/qaq0dYFMOIppgXy/yruG3
         LP1Uax/TK2IUef+cIYch3Fhasp60l/IkHkDODAE5/ilouzAQS6N76/4CavV1VExhIByB
         Sml6Nl9IRen5fDXpTZrdl5t7VbXk65cdHUHNwGLud+LCSVUKWcIbAzTQCjLRCOFVe1IR
         t67GiPDNtbhSlk76NFUC83wM4TW/jQxFNr9DXbJPA2wHqLsfXriIMlZBWUsT5L+4VpW/
         u8uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YbVUOXi2;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l39si4349ywh.5.2019.03.09.02.30.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 02:30:36 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YbVUOXi2;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 27FC9207E0;
	Sat,  9 Mar 2019 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552127434;
	bh=90j1+LXfcUDxTskSydmNsa9pU4H4gZBxCb0BSsmYdEQ=;
	h=Date:From:To:Subject:From;
	b=YbVUOXi2NoY7SbH9XgSSJ+sXeB3IvvdDQZbxbMcsRmDXgNiT9nv4x4IAx8xyTaKiJ
	 HY621Zba8pMc9hzvqMM6hi+rk6O6iEC9bnAoj1ySZdU/sk3syR7L5JhpharGgyrl1a
	 YT0B+Ztwro9lQDm5V9mv14CPObAPMiMJspB9LMFA=
Date: Sat, 9 Mar 2019 11:30:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on.
Message-ID: <20190309103032.GA18234@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.11.3 (2019-02-01)

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

Note, I am traveling for a week starting tomorrow for two different
conferences and it is the middle of the merge window upstream, so my
response time to patches here might be delayed a bit (or not, depending
on how interesting the conferences are...)

thanks,

greg k-h

