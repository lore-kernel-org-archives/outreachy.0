Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.42
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793300001;
	b=5tpu3ZyN+2z3R+EiNS0DxKteHPY9E6Vamo9oad7VJPsjdecibJcfNivnKyoCfVruwjkr
	 Rw12vz1lXCaCT2eOM1ofeUEyCC8yv8sVPLWCsr3GCAvTr2SR+dXAod4Eg4zOqOvbd7iqE
	 TPQ0QVOByiQj2aQInf47TGi2dwU2pBH5WW3MbcCvV25vVcIo4ziBBZn2XmslAg1eJ7Llm
	 V5o1FD5QWSU/Qs6d+x7NMh4lg/f02Ww4NIFxjk8wFuwi4Jihx8d7sPUMikuNB9NZugYMn
	 S5gLCULA0HQ1ClpLvT68fCBhll5vzHgNtAJOYX0B64vsnyAP+xIhcjoyZ+pzSq7sruQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793300001;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=ZmWPzm2rbQXWS/0JLk7KpqQzmeNK5xYsM/YYzmVQZ7I=;
	b=TU1pQYOhGF4tb/7voANPcddVU0K6fqlWuIF4GW9JVtaV6zIIynuFaFRDC7XzlSo19BTe
	 azo/UyOzplVLWWdxJG8GmBiczaCduox88rcOwtda/5q8j3kyQTnZ+dnKMLXeaFnoo9dts
	 V1KTGrfBrOoyBTmpGbbHJUrSk/7YNt0n/gcCmd7vZ3qsodiwiOB8xFTRJvuuM37El7UGj
	 PPhp+38msnBmRhmYzOGwpykGD5vev9lsx3LBPRIb9qsLBx1xDI+1c3TJhD6vQWAKeOw4t
	 DnWPkJv7LqT81R5dS9FjYFB1rxNt9cfBbSFJcsXxe0iSBtwiHxLIn2Ny+MbcaFo+W4g==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=NzqB2VJZ;
	arc=none smtp.remote-ip=209.85.128.42
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3013606A31A
	for <outreachy@lists.linux.dev>; Thu, 29 Oct 2026 18:53:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org D3013606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=NzqB2VJZ
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4a208d93758so25710735e9.3
        for <outreachy@lists.linux.dev>; Thu, 29 Oct 2026 11:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793299999; x=1793904799; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ZmWPzm2rbQXWS/0JLk7KpqQzmeNK5xYsM/YYzmVQZ7I=;
        b=NzqB2VJZH6/6JuUX9hDORNMzLqZi3/qpz8IjKGvjEPI7Dap+W7ySGilxFPiSbikbPj
         9nK52aerev2myO5lv0ngSBeEtWcwuUPneh2rTcm+BjkxCgyAdkWAeBcykbVfuCS4sMA8
         jYlk3y3RJZUbM89TcAwZQ7fS+ukMAR/bszu9U23KXNZKXFTILEywmEBAtVCsBPxvfviW
         jA2hGpg6RDLSWRXxU8mSSQ2Kh01CeW/08W2KJJRJ/MvcS6QD+MMFeUs76wcUEJyOnxhg
         PF74IvLCFTC/7zdDtrYmQYA7pfdB4yTCnvIOCmGrO1C0YZyHJjxVQOTqxd9AwF112B84
         nwbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793299999; x=1793904799;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZmWPzm2rbQXWS/0JLk7KpqQzmeNK5xYsM/YYzmVQZ7I=;
        b=S7Y/feeyOCT9qs4kDbOPvEyD1+30vRWl+UwaW+wOOJ/bEuWfQIxfIepwD7oAIfk67/
         GtsQppNkF+JekOUAfQVfYcb7fOpEUHHRIF+CUtTDYjol0rJHflS7YtpGGG5HR0fr8L2n
         95Wh0mZW//tXHr9dn6t9tRULDBpjPd7DYY0AYWJWHInOli60qc6qslmxVwjyS95Ek0VI
         8RdcWHCwB0IJeY8ea6jn6ZqMTaFHMvO0IROPKY1700M1XJl+cJ/G12zmahUAFnxRBrqA
         H7RpRKRrP/PSmMt+L/ccmejxFIgxT3bFh+jJtz/rSX58u4MXZo+0iIpfD9HITCxqVIt6
         pPgA==
X-Gm-Message-State: AFq9FYI+lFPVH0tiwwnB0AyVcuwtV/rtAJ4Dy/DH/04syyOENL9szJc6
	ODlRHMwENjZR6fjkTOU5avHx1M5W8z2uvoMQLeuMG0nYslumw8d6alvk
X-Gm-Gg: AYBFou25tZzSdpa3BTGu10lYbrg6Fz/747V1J8WeJQGoaeIyVF8554R+/mYkbrc/OL8
	i1LFijghdhTs966/wB5oo7DB4ROYs44m6S5k9ues+t2Y14ifZSnFLZ+wOYhk7sS8cmX09pT48zG
	zj3CFrpFoOKj+yBMd0ExqJLA1kWa04yVZE/zK6iIUYq7sO+XNREY6hIELSRDq1CoHDPcHWQvGKk
	j5qCEUKT6zZcPm/g1JqtvOxPvKFDKzarsMWU29XMMbRE+2vlxKE9DCNeWMnjJ06WkjZyuV+pOYQ
	J18Hd/J5qv61WGJHC8xu2V+chYI0vvgJECXoMIlJhirrHlXhV7YyzpUpSdimaJX8HaPS8y+0Tf4
	CYXVvAZd4C+yyri5jcUcRbdHTqQEZzhX7cxF6+WaJyD8YFz+QZaydX5TRE5SOWZlR7pFkl7drws
	eAlxw/qN6tTEomv32dt7WCOgmFp1kW1AabRlNuocfYPD9/U79RPynXcl1dqttX4JWimeMe2jNpQ
	BEh3gWHoCVWPdqJgzsoOS1igLHSmS+d2Gk3/VLTZQTXgF1k7p+U+SO9j5c3urwxmOyscX2VUvc5
	Cad/0I5p8fCc9tDipUceNj0I8sdFBjPqJZA0Ql74A91eZ9FQpZGgFSsECldcCMx/gjjYlSFKO/p
	t9aeUK5H1w4Ik2x3y4DJoKufx+LUJR51cJpF4TVK/+kR74vRXAeMHA4dFGN5D/r9O26U=
X-Received: by 2002:a05:600c:3153:b0:4a1:9661:14b5 with SMTP id 5b1f17b1804b1-4a9677cb34amr150195915e9.29.1793299998954;
        Thu, 29 Oct 2026 11:53:18 -0700 (PDT)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4abf7146621sm4779985e9.13.2026.10.29.11.53.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 11:53:18 -0700 (PDT)
Date: Thu, 29 Oct 2026 21:53:14 +0300
From: Dan Carpenter <error27@gmail.com>
To: Maria Sheikh <mariasheikh812@gmail.com>
Cc: outreachy@lists.linux.dev, vaibhav.sr@gmail.com, mgreer@animalcreek.com,
	johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
	greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: greybus: audio_manager: Add newline to sysfs
 output
Message-ID: <auOWGu-Hja90eAmV@stanley.mountain>
References: <20261029181948.13121-1-mariasheikh812@gmail.com>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20261029181948.13121-1-mariasheikh812@gmail.com>

On Thu, Oct 29, 2026 at 11:19:40PM +0500, Maria Sheikh wrote:
> Fix checkpatch warning:
> 
> WARNING: return sysfs_emit(. . .) formats should include a terminating
> newline.
> 
> Add "\n" to the sysfs_emit() format strings of the name, vid, pid,
> intf_id, ip_devices and op_devices attributes.
> 
> Signed-off-by: Maria Sheikh <mariasheikh812@gmail.com>

This changes how the sysfs file appears to the user and potentially
breaks a script or something.  You can't do it without testing.

regards,
dan carpenter

