X-GM-THRID: 6950041128990146560
X-Received: by 2002:a25:2cd8:: with SMTP id s207mr34828966ybs.87.1618262575688;
        Mon, 12 Apr 2021 14:22:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:a045:: with SMTP id x63ls8111916ybh.1.gmail; Mon, 12 Apr
 2021 14:22:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxE/iEhIgJrcJSoFmfrgKmjjRMahL3ElmIL9EEt7GvIZ8CZEUXtwWlzX19gf9vl0U26xrFp
X-Received: by 2002:a25:d086:: with SMTP id h128mr22066694ybg.89.1618262574600;
        Mon, 12 Apr 2021 14:22:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618262574; cv=none;
        d=google.com; s=arc-20160816;
        b=b3aFWHitYyHP4L6R+KuGRfJk93PEifb9+OkFLg/9NeV37Lhe8xw5FVimrp+vn3rWAi
         hP6lDbOO5ogMw4q6H5zbr1L8Gph9XR5Tcyv91J1XSPosaEYeI0L9nyf0WOWmgCyupuPa
         eHnZOPXH9dAPwLuy44wEnU6Qo1Ywrr94T9LyimdBk6339+wGCxDoOnaXchCYrHW2mEbO
         I73p3Shh6kBOIXbrONlXUjwJ43Y1FEe5jaSX8bam7zODg07IvjvIiVeYYhACxuMQiQ/n
         h1ADhIh3s0pN9F2/C4OAOuUOWYCoAXYlrvaGOo6/5GwnduaCyWn5r30Mf2qWPxkH6Aa4
         sGJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=zxvAPMXPUnca16w2oKLx4uw4qfwzmPKHrS/bXfWFeo8=;
        b=ckqYkFXUJbqNQtb7lnKGJA1odgcDPLCrAOyQuGFLJbswvJ4UDVLQx3IqmtLhM4qmFy
         byP/BDEP5YSXr4YOClWb5K9fayAxjfx2JqlFjxylVat8BfyiWDdxUWK/eWCCquaEszWr
         CC0SCffULAIuUVxdbdx1CBDmqdMFX3eiYP2vDk8SyyKvuMcoekeqQ7fELdMM696fctgL
         lWGkJIy85BiF+oL/JKVaZxRT+FDLHQpwUc8Bje5ZKTaQrqfSJ29u0SHLPhziYwBORDh3
         TFByAZc3WJRaKOrh3YQpUnmJR8SOKtFwSCr8NrM8oBKzAbQH/z2SBH5o2Ry82X2urUDF
         yDLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id q185si821275ybc.1.2021.04.12.14.22.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 14:22:54 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: e4QEx8cb6VNw1c4FoefS0nVYfEjPFcobEZNbXt7K8zkzeUZBnyqSu5bBCVROs7xzgD5D/c//uF
 /BkyUIEvkiSw==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="174380568"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="scan'208";a="174380568"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 14:22:53 -0700
IronPort-SDR: w20xRPbCNHbZFV4m4XNmVa95UmIEMCg5aIdaO7+IhGBpJS5OGhALVd7CkDtoYszRuLy2sWGJpr
 Pclup8EAGWSg==
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="scan'208";a="521337381"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 14:22:50 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id B5855200E8;
	Tue, 13 Apr 2021 00:22:48 +0300 (EEST)
Date: Tue, 13 Apr 2021 00:22:48 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: bingbu.cao@intel.com, tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] Re: [PATCH 2/6] staging: media: intel-ipu3:
 preferred __aligned(size) over __attribute__aligned(size)
Message-ID: <20210412212248.GN3@paasikivi.fi.intel.com>
References: <cover.1618180659.git.mitaliborkar810@gmail.com>
 <f618f1fe2d13417ebed185da392fb48811593a9f.1618180660.git.mitaliborkar810@gmail.com>
 <20210412094315.GJ3@paasikivi.fi.intel.com>
 <YHRZSYmHfXTh/S39@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHRZSYmHfXTh/S39@kali>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi Mitali,

On Mon, Apr 12, 2021 at 07:59:29PM +0530, Mitali Borkar wrote:
> On Mon, Apr 12, 2021 at 12:43:15PM +0300, Sakari Ailus wrote:
> > Hi Mitali,
> > 
> > On Mon, Apr 12, 2021 at 04:38:59AM +0530, Mitali Borkar wrote:
> > > This patch fixes the warning identified by checkpatch.pl by replacing
> > > __attribute__aligned(size) with __aligned(size)
> > 
> > Same comments on this than the 1st patch.
> > 
> > It's a staging driver so even if this is a user space header, it's not
> > under include/uapi/linux.
> >
> Sir, I am not able to understandd what you are trying to say in this. As you
> mentioned in patch 1/6, I removed and added header where BIT() macro under 
> apprpriate userpace, but what should I modify in this patch?

The comment on the 1st patch and above was a weird way of saying "please
drop patches 1 and 2".

BIT(), __aligned() and __packed are macros in kernel headers that generally
are not available in headers exported for user space consumption.

-- 
Kind regards,

Sakari Ailus

