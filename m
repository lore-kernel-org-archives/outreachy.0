X-GM-THRID: 6667274731711889408
X-Received: by 2002:a02:f52:: with SMTP id h79mr2847203jad.3.1552345867252;
        Mon, 11 Mar 2019 16:11:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:a783:: with SMTP id e3ls1818275jaj.1.gmail; Mon, 11 Mar
 2019 16:11:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxghEpSRrAG9Zbd+WF7pcQtwC0TfXKRPFpf+z2lMseEmTBzEpMEeSzoPT14BPEc7vU78S4H
X-Received: by 2002:a02:3f1d:: with SMTP id d29mr2663166jaa.4.1552345866419;
        Mon, 11 Mar 2019 16:11:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552345866; cv=none;
        d=google.com; s=arc-20160816;
        b=doehGNlR3kghkaum7NrfDlnfJiXcfC6KSlz5Sg/m6wNmAcoxPndcdv8gvMDhIIVK9L
         dcc/6g0JBRb6ggacwatPVdgBuh5Hn4nV9jfD/QjXwA++yy3VaZNVwI4WtoQPcZUBADFH
         mFbFgNFH5P79aS4m1M2Q/QHG1gnAvPJ2PI5u7IgteKLNs66dNSFf4Ew8VtVrAX3NFOZ6
         ZzywVd4RmM7VuT0MpehEhp31KsBhAKZLy4Hec2T5EzzMsbq2tTi3TfmmmpJgnCuBKdUC
         Tv9LshoGWUudYY/+pPkVe+PsKjKqTu8kp/pPIoOnkUnnxKSvEooCtt9H1KuAe8srg/r+
         hHgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
        b=edMaSZz2XwXkGCN/WtwOGo5VB3s/mNuvKqSVvi6OlhYLce/F3tollRTN4Yrq7qABOA
         FEehb6OAdQCqoLo3GFA4C9Cv5DPEsfQCrk/zK2fkS0SBaysP+AQo8yfuzhEa6K+RbcOk
         d2zK0+5ljw7fKssEXfBR9v43AJdYm4TM07OJaD0j03hSrVkBCY4OEaHRgIDrLnhJXV36
         coNgosSyuh4AeDaFVktp+LltGSr2jmezfE5ef2ZJtBz5bzFXTzz7UM11oNYLmH5X5DzN
         5LdQIE4+twDW3+N0xXVwPf85zfppGbgESm0G2Xjup7yjLW/PtML69HGj5/CCL0TUX5p+
         o5MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tbha2cC8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j6si31983itb.0.2019.03.11.16.11.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 16:11:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tbha2cC8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 89DAC2087F;
	Mon, 11 Mar 2019 23:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552345865;
	bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
	h=Date:From:To:Subject:From;
	b=tbha2cC84qV2+JQ46Kw2a87dJ7U/kRgoQmqvXeSE6jb6F3dqBopXBnneUads3IaX6
	 eB+mpzQkF8I8DAbCmTeDnXIqEUeK+He99pArwMrrtZhlgSMxuWPBRqhp+oPTvLD7TT
	 jWsEHJNnUmvoR3o9qwAPKse3493cDYx2agUmwkCE=
Date: Mon, 11 Mar 2019 16:11:04 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on again.
Message-ID: <20190311231104.GA30927@kroah.com>
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

