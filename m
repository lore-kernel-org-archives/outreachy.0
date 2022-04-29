Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEFD7B
	for <outreachy@lists.linux.dev>; Fri, 29 Apr 2022 06:51:31 +0000 (UTC)
Date: Fri, 29 Apr 2022 08:51:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1651215088;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uRzozrRh87VYBCwryVh04/6Hx6ex7vN/oS+Y/xaCbtM=;
	b=UJRaGgxLoKh6czf9r26arXU5zga0sZvYvfio3kw23yWtgx6AAOmn0s5PV8tAseb67aaLNx
	gmQj8UM6crplZ/by4HFA4Q6gcVd5qgzP8OlhDbCeuWAkMC4nFga6gCE2+nQ2I+1ePpv/O0
	C3ePzbaJsZdN5ilbiAmMqXPrZ5nGn1tQDnJVa6ja4I2FjhOCuSeCZb1IJBna0QJu2FKo+6
	wgQAvCUSoPTZzge2oiS0RaKsqNQU1kDBj0+s9iktNnG1ak2CqJi2ev0jzgxwMiqamm84kL
	eGM0MwwpCikHxAKd3gFqIIhEytUg+8dv+rI5DiNk05Qd5HJRwXytLpKthnxqjA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1651215088;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uRzozrRh87VYBCwryVh04/6Hx6ex7vN/oS+Y/xaCbtM=;
	b=Doc3/tS5OTAZj5I8MKbL9nv6qfjEue89W4VnDuJRjzl2MjCJWbjUA9A91izB9MEpTs5rrK
	+YTtP6N3tjAQDzCw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Ira Weiny <ira.weiny@intel.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	Will Deacon <will@kernel.org>, Peter Collingbourne <pcc@google.com>,
	Vlastimil Babka <vbabka@suse.cz>, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org, outreachy@lists.linux.dev
Subject: Re: [PATCH v4 0/4] Extend and reorganize Highmem's documentation
Message-ID: <YmuK79YPRAi0fHhH@linutronix.de>
References: <20220428212455.892-1-fmdefrancesco@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220428212455.892-1-fmdefrancesco@gmail.com>

On 2022-04-28 23:24:51 [+0200], Fabio M. De Francesco wrote:
> This series has the purpose to extend and reorganize Highmem's
> documentation.

Thanks.

Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Sebastian
