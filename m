Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.53
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793612778;
	b=dLztYgpcqYUA0lCO/vqgYHB8vyDblPPJ4ISkHnx1u4QsBJFcN7PnHJnw3XZ31YembnCW
	 jbLaK/hsFtViP/PeL3wp1jfrT3+SiUjXoM1yE246powi66DXJ+g47p3mtl0B/+Rvndiqa
	 SiU3OHqKGDgcxsM4mcg772mW5eisA3pjmP5gXuKnVINV4Jp/cS9YuzZ61eqdYrLDlAn8U
	 hfTSv25RoWNb8l076k8OqRAJYkWdkF3h/smpVTyZ4s2Kd1vZuOWEQTAOmYU7cafRD/Tmc
	 ZHvLQjiv62O6HlTHaJHY5WhLV4PKoN8vCOX+VA/XTZFLylCSdkh3Y2FZuMPuR/RHWfA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793612778;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:In-Reply-To:References:MIME-Version:
	 Content-Transfer-Encoding;
	bh=ef+PQCjWj76ZqfFxqzw9+PfzeJLyrYtV1HHS44QgjKs=;
	b=BXRpeT/7laVvUGwaw5e5UZXvmw3VLAA3XOU74q/l3Q/GkgqhkCQunPOQnvMjnaiv9wrj
	 NOUGSQ5Ftt8Ncdgo8n5UCply7FXgauuvKMgUEP0l6Q7Vvinta9m3QKQcocD7ZtzOLcbWj
	 wGJjGQ1y9bh5BX8Vwxuxpdf0r8bR8QgvcgIMFUnqpuB7lnKVtL9HCE6DmxtyHbsi96u5l
	 cIbcOMsvUVbzIsshBIV5qR+2C/7TyTEy8NHnNW9YnNTuPkSIXA4AO7Hjt1GF6CyTZHx+J
	 zY6QdXyRaVQ+P8cJmQv1cVmzUwQmQPGi7LpiHhim8XaY+pIJhynTO400kK08Kbq3E2w==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=BFB2K1a0;
	arc=none smtp.remote-ip=209.85.221.53
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC90B606A324
	for <outreachy@lists.linux.dev>; Mon,  2 Nov 2026 09:46:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org AC90B606A324
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=BFB2K1a0
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-48df54150dfso1213760f8f.0
        for <outreachy@lists.linux.dev>; Mon, 02 Nov 2026 01:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793612776; x=1794217576; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ef+PQCjWj76ZqfFxqzw9+PfzeJLyrYtV1HHS44QgjKs=;
        b=BFB2K1a0bfL6isDKOmJs42U8Y8KYhl+0mYQ8PBcyQ4zOHR/62N5vJY3bwPqGOTC0Wx
         ggXYdfChFQ3fl7Tbn/FWT1hfD7656j5MDdEW6RWwr/GgSnMfgm7uWqrveslkXr+3ZZDb
         nxL9TTiVqOPolhmgC5G0MIOqBya+0feStLhEyFrz8AamnM9aA9b2C3hTMu243QjZXPwQ
         ByhO/Zh9XtlAwp5qZj0T3s3Ubmv2hqGBxm+uQmR5j5u+8kYMB2EGzmiHm4qqCI1Vczx6
         WgDTsGH+PaebJJSRJXVg7M+SwY0+VrGXHHmZuhuzNHl3nCb+neKQNM+Df7zO6NrhYxke
         D8Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793612776; x=1794217576;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ef+PQCjWj76ZqfFxqzw9+PfzeJLyrYtV1HHS44QgjKs=;
        b=e5GtATEJkOZuceEECwdYO972NQ6PnAG+l5xZ4B7Jpp5BwMjqak3HvbJciVRfc8Rv9k
         fziq++XAKKfojmKBKN0UGqmSeiWo88SwRn+CPR2TD3tlAbgdTap1SNZO86MlaybHLu+r
         ruuX0VeOn2uNCXXR3V8Gco2LQCsxFdptJ5gGT1+ggmRcmIll5zEUoSm62irX6kmQpu71
         kMpUXgqpWlqXkNVvCEEB3uEZRid3QpsObVGBts4AKkEtyM2gaa3ypSYrWySeWSZI6FNv
         ZRvyTJmq3cs1+M6MDGvwSBJ47YSz/N5tL87uKRlCpC/A1oq+m1wRee6VS60gT/NEe322
         +8vA==
X-Gm-Message-State: APuU4Z9BvhOIuee4us/8iMpnfJdITR7XNrw+0ny1B6pQDWTyfjSPznFn
	dIcfG9ph0vSiICO49AiNzG3XTTC77q2q44bEYMg6OepbUrZh3EqjU6kZqeaIfA==
X-Gm-Gg: AYBFou2XMbgOtin27c2/Pa3SWVb5dChbmgm65Anl8+0RO7xhC9u8YTJGhzjIGWet3pA
	rtvn+QNZOjm/PsqR9q/58FEavQP7NlekVhBjKPUMR8nV/Ds9H29CelebQWW7ofQRqIU/2OKdszq
	+9lUsgTvucCYFv8Blcv2AciB6QFANjBhohii525naTL1ntx2PEOWkwuAqw+ir97PO/ibXCfCgVr
	n5DqFuaGg+V1d47GU8xz+OCBB5Tk6kxkBa4CKQly8/3V99C6/Pk2/bsHv12vJyXDTPOLzwn98hK
	d7eqYk2dOPCJt0EdPPe56MDg/bT7Ci2K/gRbUtL4ivt7+AOjOE7akMiPTptXDISfXUk5kOpM9tQ
	zW/fQmnhjbIwg2/eR/ODl/NIyNUpDqJM4Yo16yOW3YKetlPbt+gQab0KN1qlF0gQWdlpLtYLX5h
	NfZy60YEXXmEsk0Kq9I/JtZX7d6/DNKgoqGI1DcQzA4UAtTNblvDoou3Sbbxr+daHF8+LxCSxDS
	pIexqdYcRD2S7qHP/q79KazO/ydZpukKJpkQnQRdfelu7+tbX+yAzY7M8908NJOa4dwC5KdOM9n
	pQm4p33dFQC7akL/huLC/UqANv+S3dIYX/KPU9NdEMyDir27olvgZB+PYatGL/3Dfj53n/yvcT/
	wOp4=
X-Received: by 2002:a05:6000:178c:b0:487:b50:101c with SMTP id ffacd0b85a97d-48e6e2bc04cmr22210767f8f.5.1793612776010;
        Mon, 02 Nov 2026 01:46:16 -0800 (PST)
Received: from DESKTOP-0KSTGNI.localdomain ([197.52.161.162])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71b723b4sm19576057f8f.17.2026.11.02.01.46.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 01:46:15 -0800 (PST)
From: Temitope obabi <obabitemitope765@gmail.com>
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com
Subject: Tracepoint project: starting rxrpc_drop_ack
Date: Mon,  2 Nov 2026 11:33:49 +0200
Message-ID: <20261102093350.36811-2-obabitemitope765@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261102093350.36811-1-obabitemitope765@gmail.com>
References: <20261102093350.36811-1-obabitemitope765@gmail.com>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

I am starting on the unused tracepoint rxrpc_drop_ack in
include/trace/events/rxrpc.h. Its only caller was removed in commit
5e6ef4f1017c. I searched lore and found no recent patch removing it.

Temitope
