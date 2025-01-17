# SUSE's openQA tests
#
# Copyright 2021 SUSE LLC
# SPDX-License-Identifier: FSFAP

# Summary: Expert Partitioner Page to handle logical volume partition size
# Maintainer: QE YaST <qa-sle-yast@suse.de>

package Installation::Partitioner::LibstorageNG::v4_3::LogicalVolumeSizePage;
use strict;
use warnings;
use parent 'Installation::Partitioner::LibstorageNG::v4_3::AbstractSizePage';

sub new {
    my ($class, $args) = @_;
    my $self = bless {
        app => $args->{app}
    }, $class;
    return $self->init($args);
}

sub init {
    my ($self) = shift;
    $self->SUPER::init();
    $self->{txb_size} = $self->{app}->textbox({id => '"Y2Partitioner::Dialogs::LvmLvSize::CustomSizeInput"'});
    return $self;
}

1;
