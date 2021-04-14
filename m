X-GM-THRID: 6950903323792769024
X-Received: by 2002:a63:91c4:: with SMTP id l187mr4027252pge.35.1618388426669;
        Wed, 14 Apr 2021 01:20:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ecc2:: with SMTP id a2ls844661plh.7.gmail; Wed, 14
 Apr 2021 01:20:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzJYvdbwqvzyrfW5tm+RirXpmt+tyD4yZEGq0kzmF98grAuqmBMBZnSZRIXXMoW2xAe3sDw
X-Received: by 2002:a17:902:cec3:b029:eb:5441:9897 with SMTP id d3-20020a170902cec3b02900eb54419897mr1341414plg.48.1618388425734;
        Wed, 14 Apr 2021 01:20:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618388425; cv=none;
        d=google.com; s=arc-20160816;
        b=YEgw84LTwPglI0lgznmOtpLKc/SCfa3tNaEsxzbGh46Fv+J2RlWqDTPNDRNgW9IyaQ
         oT7Pns3uRuMo4QVQgGtB5FyW2VzokiQVOFsyNA7mZVMIeYOM3rlJSNtcUD0a8QIMuU+R
         P/609zgr7NLX3mr4291beuifJ/DrC/K/5aCOFVxBHa9fnU6h6w3d7xBnS+X2kDmVSLSp
         SY07WJUQ4bttTJgV2+khRBG3dNvNP9LVEA17ydT6kcGnq6+QprZu5vLGQ6YJFsUEvYo9
         PKa2HgZeBWbSiOQSQA4f3MIdTgN9pK0euVKqgw217UZ6IZ9jEr9mwvPRi3/inbH8DRQZ
         yK1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=aswVb6lZf5W+NBM1I4zHsqLN7j0HidrIWggQRDenEe8=;
        b=I1ZGcxPyd13AUEp3m0aZm8r3qtt4sdgBvrhT9BdIqFdLsGFHLAPHgcmFR3MINYx/2v
         RMe12OlLdq0VTNOhBksn2xw04S4zoz0v28jK8n9tUE8wGcT6doxo35xQMG5FzUh+aS0Q
         ZxFJh584TAz1HgqJSvKKiZZ2H1TmJvVZsoJ7SmbKckZj4CwETYm4mzYec0Vd+DbNuy4c
         Ib0n3rsSf38YKZyDQKn+efeKBEbgN1CVXjqpuSXb/DdR373cYIjVruLr/CUXy8OhQnTA
         UkD3XHV/5TEIoA5Bj0f0gTXiWOZFIADDL7eC9OkuoNyPgsDwEIbrXjIy0+0iYP4N1N7D
         yN/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="e+/pjhnt";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v22si330370pjn.0.2021.04.14.01.20.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 01:20:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="e+/pjhnt";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id D0554613B1;
	Wed, 14 Apr 2021 08:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618388425;
	bh=riGWsoIxXItIjhgKXrwEti07y5iF8ReFcCz2X1qZ3ns=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e+/pjhnt6FIJpq30LX7bTmVUzxMzX2Wn7Zez1wT0be/z7F54s+qLO7yGdSVi2J7cS
	 F+cJqyozSEMfdzIhqWtMbjWpW16LoSE5lBpbAay2pzKw3LieYieO1rtY+BoYcjwqBn
	 65hbgzNjjEACe5nNh+wK5XLvvYi2WfqtNWj+oTPg=
Date: Wed, 14 Apr 2021 10:20:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: davem@davemloft.net, kuba@kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: Subject: [PATCH v2 0/5] staging: rtl8192e: CLeanup patchset for
 style issues in rtl819x_Y.c files
Message-ID: <YHalxnhnf0ZcVafz@kroah.com>
References: <cover.1618380932.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618380932.git.mitaliborkar810@gmail.com>

On Wed, Apr 14, 2021 at 12:24:44PM +0530, Mitali Borkar wrote:
> Changes from v1:- Dropped 6/6 from and made this as a patchset of 5 as
> alignment of code is done in following patches.

Why is "Subject:" listed in your subject line?  Do not manually add it
after git format-patch has created it...

thanks,

greg k-h

