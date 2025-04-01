Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF672036E5
	for <outreachy@lists.linux.dev>; Tue,  1 Apr 2025 13:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743513098; cv=none; b=VrQhgSR52oecF1/3klueNuJo6+goxXFOeRG2mr5JWAi/wo6i2n3QacQWQlSKEMTwDLpJAeI8vNJcPA417NPhthIn7ZrDSMO9MhEoBXN8diiKZsaxE69iguD23DI5laBXrPjZrh3tbGBpKGysTkIT3IPQp6DQ6L2gFYuHLZS41BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743513098; c=relaxed/simple;
	bh=21EEY8vBM2BSXw3OSZUCMSlvuwzhDx6fvtbeWdpyudQ=;
	h=Message-ID:Date:From:To:Cc:Subject:MIME-Version:Content-Type:
	 Content-Disposition; b=kZD6Gn1CGpObd4foUKJBmmBZsChSp0T9RjMMdPyZMOxI/OqHrM1XuDLy5Mad47P34JXL6zk9Mh98qTfj7mULgrhQefwKd/4Wbdgw9gugKxSNA19CHhdgd9nzD0V8k4qI3PdQDSQ65TemqVnmpgvs98YUHoKRu3+eSDZhUyko/ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VhRnaFO1; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VhRnaFO1"
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-391342fc1f6so4923132f8f.1
        for <outreachy@lists.linux.dev>; Tue, 01 Apr 2025 06:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743513095; x=1744117895; darn=lists.linux.dev;
        h=content-disposition:mime-version:subject:cc:to:from:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QA2d05RKRcdaAAFXDinP2+mJyNTKSyj1w4F4Cmol2xc=;
        b=VhRnaFO1V/HKtx1ZTGk09Fg6zFnHwxD6PtxiqLwPgrdB8VfMOVhBZVpopGCubpmNKY
         cUspws+IuGCMo7p+J3+8IL4KAO+R18PDx6ug6yt+7PI4PTiu6vrVwHVAdqGQE9kjvz3B
         CqHJS1SSa2YtlRF3dhu+Hs5KB0JWXm28z34pS9bymPxiofr+rEMv1MFYe0kNiTpzUF5I
         6d6BuwatsIhlI2fe4MPfgv7HswFsOZvumwTrEkBuZm1Y8b0Y+8r2HW17oQc1Mr48K6eN
         oA+HeurjfJMC6kY3LLu89B9cBvoH2fE5FXpssQ508LziBnMbloAwAF9+6PS/Qn/0km8I
         cz9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743513095; x=1744117895;
        h=content-disposition:mime-version:subject:cc:to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QA2d05RKRcdaAAFXDinP2+mJyNTKSyj1w4F4Cmol2xc=;
        b=kGcG+ysKOX3mFrFg6+HVHeBN8J5dAQbsRHB5XyE6bOlV+SwpOo3C2hyP7k7+mki+/i
         N3V34BIEXx/aX4HlS5tU3xfShijTFxGmCoVDiTaPszOj5lqNLLYN1C+intzeWUBZtLV1
         vman+GlUIduyj9W5WDOHrA/iJd30sk2E3sJuWmJaiaocaHJVRt7zIXNtNYB06wBeCPwN
         zlbIQEpwo8ZnG2CL5FYQYvHOympUjUKD/TwslJYGjKUWeGb4Ea6bWH56+wEPpNmTwc0k
         uChR33Bh11by6szm4zZm2KrwW/C/aUv3DQuSGkWhKXe8qFV9d6hiLoPchu8tY18dkITj
         mWQA==
X-Gm-Message-State: AOJu0Yz7WsOvaOTCTvDBJqEvNazlGSzt/xIrBYBUzm7ekEiu/jlwBOfb
	uDmBMHqYT0Q2u1qyipCjXscO9dxl21vIqosbAccVN/dMZ1pR5Wb+
X-Gm-Gg: ASbGncupVTQ+SvAQ3YC/QMuy3ad49TkuMT+NT31jIsTGOqlOKLvzU0iIrNk/NNY8f0O
	hCOyDSTLoiGWdZ86PnRGoJKWSOfq26YxmC6xrfcfyWZoW29yjFhjyMUVBwnqKm5z7swNPZu47/K
	2frxxBnTB9emuYd8ESlGsaBkl+hEIdeakf7Z4qRriyapzsqHxmuDCO10pbkguqXCee4C2j6A4nY
	V1JgE5NJ4SyzQr8P5Wd1iQOsDq/6/+1ZFcQXK1d90T3sSkkfx3Uy02vyjo58Td2JidNema9zfI7
	smJWOfo6uYBGHw0cEJt8GjFbU7YA
X-Google-Smtp-Source: AGHT+IEGeX9fjErKMgFVBxXZla2vXFVj+YWb/POb5HqTl8FJtkKVi7DZpqBMXZoK4pS9xiWFtJ2JSg==
X-Received: by 2002:a05:6000:2403:b0:39c:141b:904a with SMTP id ffacd0b85a97d-39c141b90fbmr9076928f8f.11.1743513095448;
        Tue, 01 Apr 2025 06:11:35 -0700 (PDT)
Received: from parrot ([105.112.199.212])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b66ad1esm14304794f8f.52.2025.04.01.06.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 06:11:35 -0700 (PDT)
Message-ID: <67ebe607.050a0220.396ffc.2dd5@mx.google.com>
X-Google-Original-Message-ID: <Z-vmA0uquTttXFTO@princerichard17a@gmail.com>
Date: Tue, 1 Apr 2025 14:11:31 +0100
From: Richard Akintola <princerichard17a@gmail.com>
To: outreachy@lists.linux.dev
Cc: julia.lawall@inria.fr, princerichard17a@gmail.com
Subject: Setup for sending mail via Mutt
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The following assumes that you have installed Esmtp or Exim4 (default on Debian)
and you have generated password using App Password (for Gmail)

Configure Esmtp 
1. Added the following to ~/.esmtp file
identity "my.email@gmail.com"
hostname smtp.gmail.com:587
username "my.email@gmail.com"
password "passwordGeneratedByAppPassword"
starttls required

2. Make sendmail point to esmtp using the command
sudo update-alternatives --install /usr/sbin/sendmail sendmail /usr/bin/esmtp 50

3. Test if esmtp can send mails
echo "Testing email via esmtp" | /usr/sbin/sendmail -v recipient@gmail.com

4. Add the following to ~/.muttrc file
set sendmail="/usr/bin/esmtp"
set envelope_from=yes
set from="My Name <my.email@gmail.com>"
set use_from=yes
set edit_headers=yes

5. Setup Done


Configure Exim4 (default mail transfer agent - MTA on Debian)
1. Make sendmail point to exim4 using the command
sudo update-alternatives --install /usr/sbin/sendmail sendmail /usr/sbin/exim4 100

2. Run the command below to add gmail and password to exim4 in the format below
sudo vi /etc/exim4/passwd.client

smtp.gmail.com:my.email@gmail.com:passwordGeneratedByAppPassword

3. Add the following configuration to update-exim4.conf.conf via sudo
 e.g sudo vi /etc/exim4/update-exim4.conf.conf

dc_eximconfig_configtype='smarthost'
dc_other_hostnames=''
dc_local_interfaces='127.0.0.1; ::1'
dc_readhost=''
dc_relay_domains=''
dc_minimaldns='false'
dc_relay_nets=''
dc_smarthost='smtp.gmail.com::587'
CFILEMODE='644'
dc_use_split_config='false'
dc_hide_mailname='true'
dc_mailname_in_oh='true'
dc_localdelivery='mail_spool'

3. Test if Exim4 can send mails
echo "Testing email via Exim4" | /usr/sbin/sendmail -v recipient@gmail.com

4. Add the following to ~/.muttrc
set sendmail="/usr/sbin/exim4"
set use_from=yes
set realname="Your Name"
set from="my.email@gmail.com"
set envelope_from=yes

5. Setup Done.
