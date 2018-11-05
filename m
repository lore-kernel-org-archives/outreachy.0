X-GM-THRID: 6618737831817773056
X-Received: by 2002:a17:902:2881:: with SMTP id f1-v6mr1688979plb.147.1541425658920;
        Mon, 05 Nov 2018 05:47:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:8adb:: with SMTP id o88-v6ls398632pfk.6.gmail; Mon, 05
 Nov 2018 05:47:38 -0800 (PST)
X-Google-Smtp-Source: AJdET5eliyIpmSdyVXCoHdD3yNaCkNHdriqrP2AytOC2DE3X1eeeap0/8BhYCXjCBKgv+vgB5eN+
X-Received: by 2002:a62:e110:: with SMTP id q16-v6mr602682pfh.63.1541425658253;
        Mon, 05 Nov 2018 05:47:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541425658; cv=none;
        d=google.com; s=arc-20160816;
        b=TZPxaN4SBKjCfX3IdRJL3e0zgI1ezd9GmpozGJJNDX0D4T2Y2r9LVqCPkXhrq2TRvl
         2F5NjJeCqGqeC+mcrdPYA8eF0+i54ev+P+AWNNqXKKzlfY9DfzyjRxfbSgQvIURv09WK
         yZdj06w2xNPjB4iv45/Pu44lxLm4RCst5udCa8xDvV2J9I6uqt/SWHn3YzJuiGwcSkEt
         5uXav07lXAsHbLM8wzeEafK1E4cRS1q57uOh9EpdYUeekuZ6X192hnaT/Jef/ftBpUjV
         RfaeGx0oX/BnNyLBir1STR9Ls5dBNM1GBFK23aPPvt0xwtQGadEnZ/T1YyuhYJuTT4AY
         Y7Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+2febFZz3LI/y1Q3KXnJATKjgVO8TUC1YZIept280Og=;
        b=0Z8XlbgVKzpPnKgv95Q9fQZrO4RJ524oxmuXgBJlprkG2KZ9VhopyAWkOKy3cqIWgP
         BdtMUFKiN1EntEmISkCdC19NQDITQzgrX+hmxSU9KCQ/oVlGJpEukNYARfLIoBiwAZ/Y
         zm+Af23gMlYo2TMAGvgydgkKQUqRr2QLwTeGwFF1/PdDfQQKg+TttMPyeS9Xxjxxw8Ik
         E+SUmh9dYjqeDDB0DQ/iPOVwZEGIX1zGpZk5J23q+pF3rHB7rUtoKMPENZtZsTNPMzb1
         C+N4iXXeGmqAz9zILE+/crQRmEt61GZrDAHMtgu6b+Ky8P/POKffm8HFV1AyVT2IT+yf
         /9yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Na00bh1e;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p85-v6si2152460pfa.3.2018.11.05.05.47.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 05:47:38 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Na00bh1e;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 67DA72085A;
	Mon,  5 Nov 2018 13:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541425657;
	bh=VwAZ5SOmNduL3xBxTI2PTPTyt+rt1bl8ftDf+R4SUqA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Na00bh1eQdm/n3G7uN3lUUXtvZHY87Gcw1vN/mHEaUqApvw9RIic+eCfiS9A7fiVD
	 +X4QI4QzDCK+9iyC6ENNUpXkTRoNLCERgHAiSEKB4U2cWoA1GmWNyRe/6HS1KmQMnO
	 nzO/NtGk4p5JrTlOQhtMLg+ixdwPkw5hBJ9A3krA=
Date: Mon, 5 Nov 2018 14:47:35 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Maya Nakamura <m.maya.nakamura@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] staging: rtlwifi: Change line and comment spacing
Message-ID: <20181105134735.GC8389@kroah.com>
References: <cover.1541037077.git.m.maya.nakamura@gmail.com>
 <a0c1be6312a62595a5f8f7e0b02ced685933052d.1541037077.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a0c1be6312a62595a5f8f7e0b02ced685933052d.1541037077.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Wed, Oct 31, 2018 at 09:06:27PM -0700, Maya Nakamura wrote:
> Add blank lines at the end of if statements and spaces before and after
> comments. Edit statements so that the line does not end with an assignment
> operator or a parenthesis. Remove a blank comment, too.

That is a lot of different things all in one patch.  Please only do one
"logical" type of thing.  This should be broken up into multiple patches
please.

thanks,

greg k-h

