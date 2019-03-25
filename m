X-GM-THRID: 6667274731711889408
X-Received: by 2002:aca:5ec1:: with SMTP id s184mr12421995oib.153.1553547306747;
        Mon, 25 Mar 2019 13:55:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5d11:: with SMTP id b17ls3704567oti.8.gmail; Mon, 25 Mar
 2019 13:55:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyms2ximFE+uDiTd+KbzmDmvRXkSsBmvhl85ZNMynV2auNsqsoGCIlVeeyfdIoPVc7muBCH
X-Received: by 2002:a05:6830:1345:: with SMTP id r5mr3263085otq.256.1553547305796;
        Mon, 25 Mar 2019 13:55:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553547305; cv=none;
        d=google.com; s=arc-20160816;
        b=iuzGGU5rH9G7SJL2+1Lj0aOL2LBvobYuqRQ1Vwfos8xMoSE5ZpzAhQo4e31heJclLe
         gOr+D4t66bm27R2hmYoIdjmQ35VIFrkYIahuw4TpESdHzJdZfDB3n18wHx5KhUUG1IkV
         C2CAb/NpSnDIc4uE6ID0Wy0RW83D/AvRxEA2cs8BKgwYbFLHSTnaubeZiNOm81l5EFBj
         NiHDF+JmrlEKRrTxPywYgx5oyQ3NRHETfAskNwmdrPN8LiBP+N5ybH6eSezrXOh6WljA
         lFWh7/FzxWKypjNcdQVEVPqKXQnu5pC4XnN/QnxPuut8xB/Kj3ubY/7uq+9scp4CMb+Q
         sIFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=3DDHZA8IzWE6+GzHN4nRqW08eSvxkEkVSQ79nQy5dEY=;
        b=CdlFy7GlrlWasGeUtVlzLAhY+G7lso8GTUD/Rxuq+7jh5FbxvYtUMIRWo9n7SDTuV7
         9or2jGIqflWfzv6NV4oQTVEWSxJEX9QHNglD79HwH+Bgz4DyOQ2tWVnUxpA0uUDM3Knd
         Jghv6jaRw+V5N+nmfZpQprBJlx9J9mQNdJfKYZ8LyQkLVLrhQjlhXCBMjpDbLuq+YRA8
         6R1OpvD7no2V/sq/XD6O7AItzCwN5BJ28sxjiUt6asujcmWnQQ6bYkUA4Ur8MYGbdUSC
         QGyTr/YwcV1DKql6TO/ct9GTOIKdwDx3RFk7+C2PqdebK7KP0WaqEHm4YKMX567WGXkK
         iB0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gLo9SPiY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x31si937137otb.1.2019.03.25.13.55.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 13:55:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gLo9SPiY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [218.237.54.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 72E2C2070D;
	Mon, 25 Mar 2019 20:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553547304;
	bh=3DDHZA8IzWE6+GzHN4nRqW08eSvxkEkVSQ79nQy5dEY=;
	h=Date:From:To:Subject:From;
	b=gLo9SPiYP+md8n0KMTFRdUBR65obmXQiqmjJcAcxA3OjI5S70oDvo3KGaodfxH+xM
	 W5nZH47ZoG5bHMg18aQy6F9T5Fi1P++LV9vqaP9tUO9d9b8XWo+sFBhJP99+a4qPTM
	 gnCt7SzcEzv3nFLqs81llwV6+CvgT24La4M01+14=
Date: Tue, 26 Mar 2019 05:55:02 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on again.
Message-ID: <20190325205502.GA31080@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

Note, I am traveling again this week, so my responses to patches might
be a bit delayed, sorry.

thanks,

greg k-h

