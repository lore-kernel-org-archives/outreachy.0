X-GM-THRID: 6887486766229487616
X-Received: by 2002:a9d:1e86:: with SMTP id n6mr9544770otn.94.1603617976318;
        Sun, 25 Oct 2020 02:26:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4713:: with SMTP id u19ls1430331oia.0.gmail; Sun, 25 Oct
 2020 02:26:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyRnMtbA+UcbZOzlqiiSmLvF4Y+WfCGQphGFfEWgBibhgdke1/0BLHTIBp8v7uPsOfMfzsE
X-Received: by 2002:a54:4d8d:: with SMTP id y13mr9271864oix.75.1603617975350;
        Sun, 25 Oct 2020 02:26:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603617975; cv=none;
        d=google.com; s=arc-20160816;
        b=SYp8CAl3AzrVQihq/lRoZEbnuW0SL21yQXL5QE5DoJxl30K+5gWTkqmJrM9uqjUkb6
         eJrsvywMhugLLWFwC4edENozXHbcB89i9DxVKkPsVIne46Gqcun9d1X/n9suOXf8VpOc
         KXxB0y7FpREytOlzPjyF04+912hheKDS9rhNFtkCYRTlTpZVdH/ABPfP1HprWTcLflOS
         NlEzZbECQkvtgZxeDxAsdTLc/kLTDkn1ZgpPK8tO8YPQ6HXHdbm66hTIMDuXMQLL9z7P
         D7QlkVmiLa3nGVn7AZSBbh7tC6PrMxq8FczEbrfOOeoaeDdErRdoCenS+cOSZWgsKdY+
         nyGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=c1UwCXlupRbJYhC4tF/tT5BdRQAku37CgC0ulB0Z4KI=;
        b=KrRPzYM+Lnwuz7noQ+FoXrfmMrWTx2F6teXymLo9o6k1Hl1+nYWbOf1YuIr/saePnb
         Ci/S7xDh2YWLPIm6j0enNq2KZpWYtHfgLkv9O3fOqybGBuBsmYyQGV3Ddz49bIpMDW6E
         o+s3uMMBzoTMbKm0NsTXLAVLYcOjBNHH75BOxpswRDFg0JQ4UD+Slw4CMBj3lROkLOGz
         bNZ07TIuGViKnSmvzVi+wz/zkKyPGk1tDUiDKY7oU5lLD+tSo0VlnEtFjfvaESTa7CEc
         yVUDmYR9yRk5OqQG+8rUuuDShjOl947QO58DCe6wb/t4A/lyd7wAptmvUNIj/H+KE0kR
         879A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ivDsSzGI;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d22si563707ooj.1.2020.10.25.02.26.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2020 02:26:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ivDsSzGI;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E071B22259;
	Sun, 25 Oct 2020 09:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1603617974;
	bh=c1UwCXlupRbJYhC4tF/tT5BdRQAku37CgC0ulB0Z4KI=;
	h=Date:From:To:Subject:From;
	b=ivDsSzGI5W+zRArqqp4+7O5fO4vQ1y/zxZLkjvcTB9B7ZGgwTxzLFFduKR+yIGotj
	 F/GXbvWrYeSoZwla2KniHKmvlS/MJ1BbjbHMkmKDyWDTDFtQFME5YGEDD0YXFA6Pd8
	 /HomS1pQp6pFGZIp7Y+LoX6aXR8n7ZCG/r23UtUY=
Date: Sun, 25 Oct 2020 10:26:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on.
Message-ID: <20201025092611.GA120093@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, or that it needed more work, and
please rebase and resend it.

thanks,

greg k-h

