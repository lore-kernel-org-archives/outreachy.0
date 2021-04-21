X-GM-THRID: 6951120130932736000
X-Received: by 2002:a2e:320c:: with SMTP id y12mr19051948ljy.360.1619011001882;
        Wed, 21 Apr 2021 06:16:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7c0c:: with SMTP id x12ls430695ljc.0.gmail; Wed, 21 Apr
 2021 06:16:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxxs9lVZwmyiSyK/9fh1Nq2V+m8QomRj7EbRDw3OJjU/W49vKtRT8RzC9kkS4OHgdWikJ8T
X-Received: by 2002:a05:651c:339:: with SMTP id b25mr18127089ljp.406.1619011000240;
        Wed, 21 Apr 2021 06:16:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619011000; cv=none;
        d=google.com; s=arc-20160816;
        b=WBw9ZBk9iuxnzefjQQ+YPIU+VRHysDCcYpRt7sSLG4FCR81M1OJZjaEp4QyTTJKOv7
         XKX2cE2/b9GGXRYn6wq3qf/FOx90vrLqNJPVlMc/PZfzxUEk7n1W44ZuZsMXu5iTODZ1
         d3sW7aaHPrwnBUPW8vvHtCv9kVw6EJiaOvdCe6jT84Kc+aipEUR8FH57R+yQXsww1Qj2
         Q8HPHrt5pHl+0eTWzxR624ZME1BuBFqx5au7V1ixsC0BOCcDpaatJ1iiWecr1BlyBE9e
         7bm4PgG0pZ3Vmqu4JiPuSMcaAcWmXwaCoyO0pnJfVADcvgQnCQ0qGh1U7e6jiEYMiEvT
         XQbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dRzGSSNRpz+eFzH2So2ubKBvMje2zZTAEujED4XgJ/A=;
        b=UBacRE8RRzqvw7qmXLKKCS/YmmZkolouyMtc4ApBnvFyRd31SOOGwtGg4hKmyH8HVH
         gCHubbGLJIwtInrzpu8uNsih0uEd9t7wiHmNswC9Kw+o4KO7SrjmUCD4QnYnwQ9kRoaU
         WpXb3ZNNu3wQaIs+vJkn4dxpq4LCiGEc/froBtbHjrZf2uAVNo7vFFeu3Jvi7svzFIxK
         F6ICLF9R6oLEmTmrfrnDl1jcwX+uIiis6DCuiUxDDU/SHWle7l48hvMHZDku8Q5u7DKA
         iuE1JQRKsxesv/dTwUZzW2O3zjoSWJQwHmcg8+a/e7GpVjP877KD/cQWoMwXgdnjLTNG
         s79w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=cONTAs1f;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id i11si134316lfj.6.2021.04.21.06.16.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 06:16:39 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=cONTAs1f;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=dRzGSSNRpz+eFzH2So2ubKBvMje2zZTAEujED4XgJ/A=; b=cONTAs1f8SM90mxQ+xn7aZBJEz
	ZB+5o8m2aPzm6QanM+Jrbm3O0Kh2JwvtUC6otyn/AP0ZS5PxUxHSK3jK8yFxzlRYU/w3C/Vf+EnbJ
	HgyOumHIQJ0YRrkd/XYygZoE1vE34hnc7Kd6uCW47XYJvoWpRvXbhnCbD8zwDJW6bVj7sFVS1dFg7
	8w6lXL900xGpbrXunim5UE1K7cCdXdyhum3VTvJHYt4NG0vXdsUnJW5kZnUFAeDBdcEZbcXd71WG7
	T5eucAm13curkj/KT24LbNYdehoqSQKxDPaYXpnXKN1KV1cXu/YBYZNzqc4t9tOh9N9p5h24ctKY9
	O6Dp+/Ug==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lZChO-00GYcv-1O; Wed, 21 Apr 2021 13:15:40 +0000
Date: Wed, 21 Apr 2021 14:15:22 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
Message-ID: <20210421131522.GI3596236@casper.infradead.org>
References: <20210421123718.GA4597@focaruja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210421123718.GA4597@focaruja>

On Wed, Apr 21, 2021 at 09:37:18AM -0300, Aline Santana Cordeiro wrote:
> -const struct atomisp_format_bridge *get_atomisp_format_bridge_from_mbus(
> -    u32 mbus_code);
> +const struct atomisp_format_bridge *
> +get_atomisp_format_bridge_from_mbus(u32 mbus_code);

As I said, better to break the 80 column rule than do this.


