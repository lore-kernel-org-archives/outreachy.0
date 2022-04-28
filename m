Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162CAEB8
	for <outreachy@lists.linux.dev>; Thu, 28 Apr 2022 16:34:53 +0000 (UTC)
Date: Thu, 28 Apr 2022 18:34:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1651163691;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=D4IYzK4skMcshvqsyuOfqpCXfosOxqx0uW/iv4Scnbo=;
	b=We0NfvK3dDgo1MmaO1oe+HaQNGlP+RYJTdR/JDmYFAQAfc5W65605nC5vH/9Z/XGUGBQAL
	foI+vP4bIwUDV+p1wk2f26qbnMYvoGiAMOS0edDSdpMb0S4HV8nZUA2a0wEG82aUZ0LVlI
	nbwE5WiFeKIXRgDwDGQ7Zjzdt8I5zT5yer39IKwRSFzTd5VS3foN45pvIqRA6rgdQjajbN
	nnyOPxGwhWlDWUjUTgNTQ/q/H2L6JkiaCOK0Tx5ZIs6Wb2e2KsBnJhxj6EEPd3tVFJF693
	GSbIRee2Nve7KFCMU1UBGfFT4/v8L+3vWHyNqehXPpT+kqkPTkfTB3bubDS+BQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1651163691;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=D4IYzK4skMcshvqsyuOfqpCXfosOxqx0uW/iv4Scnbo=;
	b=eIJZCZ63DW+C5rUkw5LE1bT7Hm+mj2yYHcNJ9MaXuuBEwcCHruY1kdLsPbgIvrUunFaazH
	0eABWJMEqSif0SDw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Ira Weiny <ira.weiny@intel.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	Will Deacon <will@kernel.org>, Peter Collingbourne <pcc@google.com>,
	Vlastimil Babka <vbabka@suse.cz>, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org, outreachy@lists.linux.dev,
	Jonathan Corbet <corbet@lwn.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v3 4/4] Documentation/vm: Rework "Temporary Virtual
 Mappings" section
Message-ID: <YmrCKtGaCbD5SQtY@linutronix.de>
References: <20220427183821.1979-1-fmdefrancesco@gmail.com>
 <20220427183821.1979-5-fmdefrancesco@gmail.com>
 <YmpYEkvbJX2JBPvW@linutronix.de>
 <6442788.4vTCxPXJkl@leap>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <6442788.4vTCxPXJkl@leap>

On 2022-04-28 13:14:30 [+0200], Fabio M. De Francesco wrote:
> > > +  should be only used if it is absolutely required, otherwise 
> kmap_local_page()
> > > +  should be used where it is feasible.
> > 
> > I'm not keen about the "absolutely required" wording and "feasible".
> > That said, the other pieces look good, thank you for the work.
> 
> I'll rewrite the last part of this sentence as it follows:
> 
> + should be only used if it is required, otherwise kmap_local_page()
> + should be preferred.

Yeah, my point is that it shouldn't be required. Using a kmap_atomic()
mapping only because it is not limited to a thread/ CPU sounds wrong.
This shouldn't be a valid requirement. Therefore kmap_local() should
always be the way to go.

Anyway, I can live with that and hopefully that interface will removed
soon :) You yourself, as you pointed out, removed a user or two so I'm
confident that it will happen at some point ;)

> Thank you so much for the time you have spent for reviewing and helping,

You are welcome.

> Fabio

Sebastian
