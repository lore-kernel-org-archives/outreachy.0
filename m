Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADB5EC2
	for <outreachy@lists.linux.dev>; Thu, 28 Apr 2022 09:11:50 +0000 (UTC)
Date: Thu, 28 Apr 2022 11:11:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1651137108;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nNOLzMN4GCAqBBfW+r8eqm5hDs3n5cjsSXnK/5QFPds=;
	b=q9fWvipxeyuuIhq4+NB4f0zZUeNRO9fKzRYos5WIhZ2FTHy8dYPMHVGR9bzNa3ITWgsq2J
	GqMGra6y+XiQ2aQl1i6HqvOofzVtblPQQe/dj5SbfpGTubLf0kTNg2rqcXkHFtoGFjfYah
	FOdw4duodfVpezANBfBJdprbLmZSXtsN77r9ambMrOqTOOcDrN/PBd8qGZjPyFsYKWU+Lu
	F9otqnAOa3RCZUVVm+f7geBY8fqswq1YvvsEZv0EipvwvgCwnY9ASCte0o0X80KAVIYABr
	u3P705AiBQ9FpbhbcZLHkPoiHWPDp5q61rGw597YAjo3wgVEOMtpqIwweRWW6A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1651137108;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nNOLzMN4GCAqBBfW+r8eqm5hDs3n5cjsSXnK/5QFPds=;
	b=7dCD8xWto1maJxrNTxYG+xqLePiWvXHnBLrZmkaeDiRqei49ZmGnJxR9LO7zRcSbHpPRjy
	ep9UlPjhOTH1ebCQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Ira Weiny <ira.weiny@intel.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	Will Deacon <will@kernel.org>, Peter Collingbourne <pcc@google.com>,
	Vlastimil Babka <vbabka@suse.cz>, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org, outreachy@lists.linux.dev,
	Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH v3 1/4] mm/highmem: Fix kernel-doc warnings in highmem*.h
Message-ID: <YmpaUgxIk0rrwt2G@linutronix.de>
References: <20220427183821.1979-1-fmdefrancesco@gmail.com>
 <20220427183821.1979-2-fmdefrancesco@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20220427183821.1979-2-fmdefrancesco@gmail.com>

On 2022-04-27 20:38:18 [+0200], Fabio M. De Francesco wrote:
> --- a/include/linux/highmem-internal.h
> +++ b/include/linux/highmem-internal.h
> @@ -236,9 +236,18 @@ static inline unsigned long totalhigh_pages(void) { =
return 0UL; }
> =20
>  #endif /* CONFIG_HIGHMEM */
> =20
> -/*
> - * Prevent people trying to call kunmap_atomic() as if it were kunmap()
> - * kunmap_atomic() should get the return value of kmap_atomic, not the p=
age.
> +/**
> + * kunmap_atomic - Unmap the virtual address mapped by kmap_atomic() - d=
eprecated!
> + * @__addr:       Virtual address to be unmapped
> + *
> + * Unmaps an address previously mapped by kmap_atomic() and re-enables
> + * pagefaults, migration, preemption (the latter was disabled only for
> + * !PREEMP_RT configurations). Mappings should be unmapped in the reverse

Not sure how detailed you want to put it here as "reverses kmap_atomic()
doing." might be okay ;) This indicates the "migration" is disabled for
!PREEMPT_RT which is not the case. So maybe something like

 * Unmaps an address previously mapped by kmap_atomic() and re-enables
 * pagefaults, CPU migration (CONFIG_PREEMPT_RT) or preemption
 * (!CONFIG_PREEMPT_RT). Mappings should be unmapped in the reverse

will make it clear.
=E2=80=A6
> --- a/include/linux/highmem.h
> +++ b/include/linux/highmem.h
> @@ -138,24 +138,14 @@ static inline void *kmap_local_folio(struct folio *=
folio, size_t offset);
>   *
>   * Returns: The virtual address of the mapping
>   *
> - * Effectively a wrapper around kmap_local_page() which disables pagefau=
lts
> - * and preemption.
> + * In fact a wrapper around kmap_local_page() which disables pagefaults,
> + * migration, preemption (the latter disabled only for !PREEMP_RT
> + * configurations).

and here.

Sebastian
