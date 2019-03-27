X-GM-THRID: 6672752996979310592
X-Received: by 2002:a25:5d05:: with SMTP id r5mr1691110ybb.21.1553711128308;
        Wed, 27 Mar 2019 11:25:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:dd6:: with SMTP id 205ls7361943ybn.15.gmail; Wed, 27 Mar
 2019 11:25:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz225f8SFNQXdrC95FB9RRICIsbzmqBUXxLbh/2JI3xqHpyybOJSCbKqbL5Ye34kzAPASVI
X-Received: by 2002:a25:24c:: with SMTP id 73mr1448789ybc.15.1553711127567;
        Wed, 27 Mar 2019 11:25:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553711127; cv=none;
        d=google.com; s=arc-20160816;
        b=F55RnM3OrKJOsfXvFWSuqqK7Pp7dlKpaJsqhDvAD/7M6GHrWXpsnB8RB1fqlc+ix1k
         I2/jKljHxJF9l/GzWCioNls9QFkeFrYGeVooeePAZLNmbMu7MRKe6qO4qJfxcg0pBxb1
         R0eUjVnyWwgpjqvNrYTXyWCnlrTsVM+VZhRWUEdcAFtYoXPJ9pMr0/ohi//kXOs+EH2G
         KeS1URJ303F8ZFJoqrxOznWZt/woLsyE/cG7KsVTc5CJf6CSlIru0bhcMQ/OjihHhk4S
         g5FYo5qc1qJh7jR+ayIzHsABxvpT8a4GeAua3IMGOVYGnOCToFOJ/wjUlPZKAPyTIk5H
         WjXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=goTYxC27KmCUnu4jQKBa30Z0Sft448EZseFjSHRk8k4=;
        b=WOh/1sUMl/OGJMPylXpS0ROFNnP3VPyri3sBX31K0R8VQDCz23CWHvvflXuQJKFM93
         Hi2pox6TX5zSGAyI5SqryrmnE6prykRuhMiAPfMwdrZ2exk5i1t+ncNmaQ9icK1pE+Tx
         lPfae1iBFoJv3QTg53FNTqegzxUVGFbEFliqEKV8lET+F+UNQPzSuM/2gY6y4c2rsSwB
         /C2rf8ptL41JBG99tt8Q73fx3o820/yOKIV7bZ37uq8kjNc8KJN8B6pbJi8vZFp3TVE3
         n+oGH2ZmrEBCXDq3kzAg/wijkM13YgeWNKcy/elOMiXqpNKrZHshs/Y1DM8KQYldmBUH
         YxPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=llfTNmMd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v124si302099ybe.2.2019.03.27.11.25.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 11:25:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=llfTNmMd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0C7772082F;
	Wed, 27 Mar 2019 18:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553711126;
	bh=goTYxC27KmCUnu4jQKBa30Z0Sft448EZseFjSHRk8k4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=llfTNmMdYLEv1E4yFB+0cbWkRcQHoXDxjZ3THmzKhg0Oy8hmwD5fC+SRIQ5OcsLPl
	 2YMu1tTl8mHlQLDETsSboCwITPjzWR3Q6owHHGEMRgQcg67pRcBHc+IcsxZ4byHDq3
	 wPq1kumV8ACjjVZ/fEoEJtjSVloXRhGdt4+dfS1A=
Date: Wed, 27 Mar 2019 23:29:51 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Branden Bonaby <brandonbonaby94@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/3] staging: rtl8712: rename variable to avoid camelcase
Message-ID: <20190327142951.GA1851@kroah.com>
References: <cover.1553619382.git.brandonbonaby94@gmail.com>
 <2de19725be83555d1f3983bf4ff7d9925ebd4f1c.1553619382.git.brandonbonaby94@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2de19725be83555d1f3983bf4ff7d9925ebd4f1c.1553619382.git.brandonbonaby94@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Mar 26, 2019 at 01:29:29PM -0400, Branden Bonaby wrote:
> Rename variable blnSetTxDescOffset to bln_set_tx_desc_offset
> to align with linux kernel coding style in rtl8712_xmit.c.

You can drop the "bln" prefix, it's not needed at all, this should just
be "set_tx_desc_offet".

thanks,

greg k-h

