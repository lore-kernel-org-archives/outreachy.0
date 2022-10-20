Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E927B
	for <outreachy@lists.linux.dev>; Thu, 20 Oct 2022 21:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666302454; bh=EIfSZf9ptH4rrNxeFTKR0PgrbJ91JMJMalieSk1UbCo=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=Epxu91vCCmNTbTv9z45vMy0iOTDiPTp5mjpvCJIdfps4/+l0slM9xypvB0bU9BtQx
	 mHk1NcMT2LD1Deu0MuwKkJ8zClEt4ANtb0xaw/cNxFb1L5itoxwNghlfBrUjAt726g
	 8hoc56MMtpiyQ2kF/ODdV7CJR6IsTFLsZlEdR2R8=
Received: by b-6.in.mailobj.net [192.168.90.16] with ESMTP
	via [213.182.55.206]
	Thu, 20 Oct 2022 23:47:34 +0200 (CEST)
X-EA-Auth: DTa6MG/1NpVNrlc8KsvYY7n6z6xlAN88AdImfOEDhf8eyzoQCy5wyrz2RjuuYKxOl/LiMsvq/eruwMi+PQqbwBq7oCogwrwr
Date: Fri, 21 Oct 2022 03:17:30 +0530
From: Deepak R Varma <drv@mailo.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Patch set versioning
Message-ID: <Y1HB8oV7z+7zoIr1@debian-BULLSEYE-live-builder-AMD64>
References: <Y07iMwCa9zHCcs1J@debian-BULLSEYE-live-builder-AMD64>
 <Y07ujhlBBVM6Yd+t@aschofie-mobl2>
 <Y075EMTWW/4Km7NE@debian-BULLSEYE-live-builder-AMD64>
 <Y1AN9LugEoaqMPov@debian-BULLSEYE-live-builder-AMD64>
 <Y1Da9qJBOsLeCcZ6@debian-BULLSEYE-live-builder-AMD64>
 <Y1GMk3HQ1z4g8JFl@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1GMk3HQ1z4g8JFl@aschofie-mobl2>

On Thu, Oct 20, 2022 at 10:59:47AM -0700, Alison Schofield wrote:
> On Thu, Oct 20, 2022 at 10:51:58AM +0530, Deepak R Varma wrote:
> > On Wed, Oct 19, 2022 at 08:17:16PM +0530, Deepak R Varma wrote:
> > >
> > > Another related query hence extending this thread.
> > >
> > > Is it okay to include additional patches in an already submitted patch set's new
> > > version? Some of these patches are based on the feedback received on the current
> > > patch set and few patches are continued code clean up work while waiting for the
> > > patch set review/feedback.
> >
> > I just read feedback from Greg KH in another thread and deriving "yes" to be the
> > answer to my query above. Please do let me know if there are any further
> > comments for me.
> >
> > Thank you,
> > ./drv
>
> Hi Deepak,
> Sorry about the late reply and I think you've gone down the big patchset
> route. This is the time to explore such things and what you have done is
> fine. I'm sure everyone does a large patch set that they later wish
> they had split, and vica-versa.

No problem at all. I should have been more watchful of the messages in the email
rather than asking this query.

You spoke my heart. I struggled a bit while re basing the patches. But it was an
awesome learning. I am so happy that I manged to rebase the commits with no
overlapping. Took 3 aborts to get it right :)

>
> The mess on these cleanup patches can come when GregKH takes a couple
> from the set, but not all. Then you repost the set, minus the patches
> he took, keep the same patch set title, and note in the changelog,
> something like ' 2 patches were merged, so now this is only 8'.
> I don't know if this is going to happen to you, but it's going to
> happen somewhere on this list, this round.

That advise is helpful. Thanks. I am just worried to meet the first target of
getting 10+ patches into Greg's tree. I lost 4 days initially to overcome
secureboot complication. Hopefully these patches will get through soon and I
will be able to move on to the next task.

Any advise if the mentors can be requested to share the next tasks while we
await the patches to clear through???

>
> Good luck w your 10 patch set,
> Alison

Thank you Sir. This was very helpful.
./drv

>
> >
> > >


