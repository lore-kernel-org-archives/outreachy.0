X-GM-THRID: 6755642568101330944
X-Received: by 2002:a05:6214:208:: with SMTP id i8mr3870190qvt.233.1573068365061;
        Wed, 06 Nov 2019 11:26:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6289:: with SMTP id w131ls1132055qkb.15.gmail; Wed, 06
 Nov 2019 11:26:03 -0800 (PST)
X-Received: by 2002:a37:7d03:: with SMTP id y3mr3481437qkc.385.1573068363749;
        Wed, 06 Nov 2019 11:26:03 -0800 (PST)
Received: by 2002:a37:6c82:0:0:0:0:0 with SMTP id h124msqkc;
        Mon, 4 Nov 2019 20:53:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqwkFmB05VZgSEOGimsDh2zfndHx3JssUhsCvR0kGb/L9e8aHDgapCMO3Z8UjpkIGQ5j2APH
X-Received: by 2002:a1c:7905:: with SMTP id l5mr2405554wme.76.1572929621170;
        Mon, 04 Nov 2019 20:53:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572929621; cv=none;
        d=google.com; s=arc-20160816;
        b=sTCsni/2lFMj6l5lMjaJg7XcJt9V9Lf5ezYepNHiV2Z5DVW9WWZrFrvNjFwGrts0lG
         6DTBeb0eJOzavbxHkd5EVkDF08TmnUTWExoy65q161L1b4kwFH/ILnVeF26wzy6t9muy
         KUnglWkwa/5uGs7MwSW7l1kEsSR/SKKHuTADlNZu0MLg7guEkYs7Ek3YPNPKl/+V9aMD
         A4kMnEx3M+G2E+XiCnM2zY0wqdKg9SzUptQotLeiavZAGUBKyTD2/ks2idELtEzffFcu
         gDk7BdQnYHxOunof8RRtdXTPkKdDuN7wqZaQJePyn49VHkXFIkFufgog3hliYFUeb61p
         jBhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ynk/Jlv4zfIApiDvMMJssbkmr9wLbQcF3N8lX8JdzoE=;
        b=P+Q9LuFFR9PRDnB6NxF+q7ZwzR+zK3+9561tXpfv5Sedj0zL4TRlBqC9Z9pUTi0hw+
         tj/xSWd1QWPrm+NFTNLqniAys2xvgzGgLEpgNcvGfYey1z8EjploRsHfEbTSNLSyVkUS
         EDnnbgDj6T6rizqH9WeHyecGETrVqin/fQFrNWH10qHT9Ytp5QYnKTjpdzdaR8BGgIwX
         KLKTB0BkvL1eakdPVz42PrsU64OTOQL2fTcYFOyRqF52Q1gMvuTE0wJbLziUus9CPRUd
         nMa2bG8REfZD0z0YSuFbgnBAnz3p7vUM/uO73KEvyPhdKssCaVKeFqE8WUEcuUbFZFCV
         bJpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=FhJB42Gy;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
Return-Path: <mirq-linux@rere.qmqm.pl>
Received: from rere.qmqm.pl (rere.qmqm.pl. [91.227.64.183])
        by gmr-mx.google.com with ESMTPS id q22si848192wme.2.2019.11.04.20.53.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 20:53:40 -0800 (PST)
Received-SPF: pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) client-ip=91.227.64.183;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=FhJB42Gy;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
Received: from remote.user (localhost [127.0.0.1])
	by rere.qmqm.pl (Postfix) with ESMTPSA id 476cgw5LH0zJb;
	Tue,  5 Nov 2019 05:51:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
	t=1572929485; bh=ynk/Jlv4zfIApiDvMMJssbkmr9wLbQcF3N8lX8JdzoE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FhJB42GySupSrJPyjQL3OufU9k7mKEsWcFJus2/144sX8U56P+8nPlHSIofh8/QZW
	 WJrU6xxxMUXvRrvvmLwu7BMCRY55E1dLA8Xvu8QqezwJ4WzqAnx9zPkvsGHM64wugw
	 p3PO88gw9NzyIwvT/ffb9MWcYt6O0mZXf+2itj1iyFw23LaNxRk2QQPQ/VSmAUWvd3
	 90OWSfkUF2cMwAYBodeoJZBxVfbx4e85rCakQFZmEuMCRKIUW1ZFW4CKjbcgwUxRs1
	 CQs2GJQ96jNY9JMzw07OlnENdp6122UT31L6oKVSyv9lSNFxgRrcput3RkCWVQ8Hn0
	 fEWvqqx4BpA9g==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at mail
Date: Tue, 5 Nov 2019 05:53:37 +0100
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: outreachy-kernel@googlegroups.com, thierry.reding@gmail.com,
	airlied@linux.ie, daniel@ffwll.ch, jonathanh@nvidia.com,
	dri-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] drm/tegra: Remove space after parenthesis
Message-ID: <20191105045337.GB1764@qmqm.qmqm.pl>
References: <cover.1572920482.git.jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-2
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1572920482.git.jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Mon, Nov 04, 2019 at 06:23:19PM -0800, Jamal Shareef wrote:
> This patchset removes spaces after left open parenthesis.
> Issue found by checkpatch.

I'd say that those spaces make code easier to look at, so it would
be better to teach checkpatch to ignore cases like these.

Best Regards,
Micha��Miros�aw

