Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6EBF4688
	for <outreachy@lists.linux.dev>; Sun, 31 Mar 2024 18:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711908519; cv=none; b=d4NambaTvFqRqxcJajDvMgbCgMZVpNYjp7JFo6tfo3wQpQ1xUC8TL/UCealjXPC8M5HbZCdofSbYUSM+++xDWlp7orXf1S8kZqEvxt6wE9R1k1Ux2AQSdUm5krMMceSKi70F5cz7xsyeclnE6oC18P1tQ3D0jT9BjrQltQOiAdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711908519; c=relaxed/simple;
	bh=ihSPv/bZ5sM/c7Y+V2q4SohkVL5V2lyMiRXiQ6Rkf2w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aI1+tgukaeKcdCD1OyTgUJrDC3V9WbaaCAerNypDUeTGI1LuxkzfS1ePQK4pDksfyoe7/ZfGajcttglNxe3dn/+fcMs7Q/bT1WDNkkJkYd3ET3z4Kvymi2yGZtW8a5gq1UJdt/Hf7l1zTu7Q6ug6nh+qMed03PUJ0VVvCOVaiuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nyu/nsB5; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nyu/nsB5"
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-5d3907ff128so2708769a12.3
        for <outreachy@lists.linux.dev>; Sun, 31 Mar 2024 11:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711908517; x=1712513317; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ywW9FTrztw/GYYLfTIt316+aO2c7ZNlNlgGATNzPyRQ=;
        b=Nyu/nsB5cBlJNPiuowCECU6s2eiRhwdNAoxhO8skD+BnQC8Aqh/Fsoipc8o+SnKilH
         95za9DFkYFVhGn7cYI0M/KymHZAOMtDnv0wefrnN91qVgxSmuk3fbjv4tZv67TbBr2me
         AN7JUcWpa/Pt70Y3Tt4d7ji/mVh6Gkr12mX4i9kvpHSr5L3LdTf36sdI94iigb9sDQEm
         EkBqy03hAVR/aq5ljjcmOc5bPnfKjrKdkZjdJWJvmIdyEjLnsnGk76wN6gQ+PiCW6Heb
         beeR7m1AyPF/M9M/3KOI2h99QJo0tz2YKUNkVLtZU+9YUDQVvrddtOWrxtVMVZlgt0kq
         dfsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711908517; x=1712513317;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ywW9FTrztw/GYYLfTIt316+aO2c7ZNlNlgGATNzPyRQ=;
        b=BTafF/7ymyMhxc0KAP19R9eZCQbf/wJnB/4Jn6VqcvJC4qkp77HsJENsbruWa2y57C
         pAreMUARVr5kMwV6fL5KGsZemv1XSk+SqXhqJ3xOjvIeF4yc1V6UZGT+aBUOFVFh2Eh1
         ZBUGdf4JHeH13lGDnA+ketXB59x26VikqD16NBehhNC1m2ALeg3PlrYkHLJDhTWa8ek5
         bJB6YVc4izLIJfH0jk94e1AcoD8vZ4UQVBRgZVj98VTabRaTV6DlgcyO7uqzSjUaQBje
         2gz/UeX978bN2QcwyloX2woSPnvlJ3ytcNI3rtgOq6dl7O4M3wZgrKv9AaL1cBLy9bmG
         BHrw==
X-Forwarded-Encrypted: i=1; AJvYcCV9O8iCZ78S1eZi26OCJsO8rteJZZ4s4+WggmyzKylLph5kwOGD1Pr42g8PcuDoKjyLlRMqwx09Lg9Yu2mm4djd+UAEBkt3klpV
X-Gm-Message-State: AOJu0YwzdcjJNLh/qlEo7J05xTZuu+OXViJk/6Az45esYErtdpD+isrM
	ETGHao7sYZiqhJYKX2AdUSJn2NKK+M4uFGCVAYsFs682JkHSIp4S
X-Google-Smtp-Source: AGHT+IG4HHJOnoY0AX8Z2Ya0xCmP7GPs6kEBHr7Vo0I7bNns7ryU/Kx/k+nAX7wqZdTIyu2uc9SojA==
X-Received: by 2002:a17:902:ca8a:b0:1e0:c91d:4487 with SMTP id v10-20020a170902ca8a00b001e0c91d4487mr6398283pld.43.1711908516993;
        Sun, 31 Mar 2024 11:08:36 -0700 (PDT)
Received: from ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx ([2409:40e3:1005:4847:2e21:db9c:20bb:4a48])
        by smtp.gmail.com with ESMTPSA id j7-20020a170903024700b001e22860c32asm5652309plh.143.2024.03.31.11.08.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Mar 2024 11:08:36 -0700 (PDT)
Date: Sun, 31 Mar 2024 23:38:28 +0530
From: Ayush Tiwari <ayushtiw0110@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: alison.schofield@intel.com, paul@paul-moore.com, mic@digikod.net,
	fabio.maria.de.francesco@linux.intel.com,
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev,
	linux-security-module@vger.kernel.org
Subject: Re: [PATCH v2] landlock: Use kmem for landlock_object
Message-ID: <ZgmmnLIal3gz55Q+@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>
References: <ZggZi/EFICvb4xTU@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>
 <2024033030-tutu-dynamite-47c9@gregkh>
 <ZgmETqQr7+W9XtWN@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>
 <2024033111-squeezing-linoleum-52a7@gregkh>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2024033111-squeezing-linoleum-52a7@gregkh>

On Sun, Mar 31, 2024 at 06:54:39PM +0200, Greg KH wrote:
> On Sun, Mar 31, 2024 at 09:12:06PM +0530, Ayush Tiwari wrote:
> > Hello Greg. Thanks for the feedback.
> > On Sat, Mar 30, 2024 at 05:12:18PM +0100, Greg KH wrote:
> > > On Sat, Mar 30, 2024 at 07:24:19PM +0530, Ayush Tiwari wrote:
> > > > Use kmem_cache replace kzalloc() calls with kmem_cache_zalloc() for
> > > > struct landlock_object and update the related dependencies to improve
> > > > memory allocation and deallocation performance.
> > > 
> > > So it's faster?  Great, what are the measurements?
> > > 
> > Thank you for the feedback. Regarding the performance improvements, I
> > realized I should have provided concrete measurements to support the
> > claim. The intention behind switching to kmem_cache_zalloc() was to
> > optimize memory management efficiency based on general principles.
> > Could you suggest some way to get some measurements if possible?
> 
> If you can not measure the difference, why make the change at all?

Kindly refer to this issue: https://github.com/landlock-lsm/linux/issues/19
I have been assigned this issue hence I am focussing on making the
changes that have been listed.
> 
> Again, you need to prove the need for this change, so far I fail to see
> a reason why.
> 
> > > > +static struct kmem_cache *landlock_object_cache;
> > > > +
> > > > +void __init landlock_object_cache_init(void)
> > > > +{
> > > > +	landlock_object_cache = kmem_cache_create(
> > > > +		"landlock_object_cache", sizeof(struct landlock_object), 0,
> > > > +		SLAB_PANIC, NULL);
> > > 
> > > You really want SLAB_PANIC?  Why?
> > >
> > The SLAB_PANIC flag used in kmem_cache_create indicates that if the
> > kernel is unable to create the cache, it should panic. The use of
> > SLAB_PANIC in the creation of the landlock_object_cache is due to the
> > critical nature of this cache for the Landlock LSM's operation. I
> > found it to be a good choice to be used. Should I use some other
> > altrnative?
> 
> Is panicing really a good idea?  Why can't you properly recover from
> allocation failures?

I am relying on SLAB_PANIC because of the reason I mentioned earlier,
and also because it was used in lsm_file_cache that I was asked to look
into as reference. I could try to recover from allocation failures but
currently my focus is on working on the changes that are listed. I will
definitely try to look into it once I am done with all changes.

> > > > +
> > > >  struct landlock_object *
> > > >  landlock_create_object(const struct landlock_object_underops *const underops,
> > > >  		       void *const underobj)
> > > > @@ -25,7 +34,8 @@ landlock_create_object(const struct landlock_object_underops *const underops,
> > > >  
> > > >  	if (WARN_ON_ONCE(!underops || !underobj))
> > > >  		return ERR_PTR(-ENOENT);
> > > > -	new_object = kzalloc(sizeof(*new_object), GFP_KERNEL_ACCOUNT);
> > > > +	new_object =
> > > > +		kmem_cache_zalloc(landlock_object_cache, GFP_KERNEL_ACCOUNT);
> > > 
> > > Odd indentation, why?
> > > 
> > This indentation is due to formatting introduced by running
> > clang-format.
> 
> Why not keep it all on one line?
> 
I kept it all in one line in v1, but Paul and Mickael asked me to use
clang-format, hence it is this way.
> thanks,
> 
> greg k-h
