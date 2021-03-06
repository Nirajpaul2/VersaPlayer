//
//  VPlaybackDelegate.swift
//  VersaPlayer Demo
//
//  Created by Jose Quintero on 10/11/18.
//  Copyright © 2018 Quasar. All rights reserved.
//

import Foundation
import AVFoundation

public protocol VersaPlayerPlaybackDelegate {
    
    /// Notifies when playback time changes
    ///
    /// - Parameters:
    ///     - player: VPlayer being used
    ///     - time: Current time
    func timeDidChange(player: VPlayer, to time: CMTime)
    
    /// Whether if playback should begin on specified player
    ///
    /// - Parameters:
    ///     - player: VPlayer being used
    ///
    /// - Returns: Boolean to validate if should play
    func playbackShouldBegin(player: VPlayer) -> Bool
    
    /// Whether if playback is skipping frames
    ///
    /// - Parameters:
    ///     - player: VPlayer being used
    func playbackDidJump(player: VPlayer)
    
    /// Notifies when player will begin playback
    ///
    /// - Parameters:
    ///     - player: VPlayer being used
    func playbackWillBegin(player: VPlayer)
    
    /// Notifies when playback is ready to play
    ///
    /// - Parameters:
    ///     - player: VPlayer being used
    func playbackReady(player: VPlayer)
    
    /// Notifies when playback did begin
    ///
    /// - Parameters:
    ///     - player: VPlayer being used
    func playbackDidBegin(player: VPlayer)
    
    /// Notifies when player ended playback
    ///
    /// - Parameters:
    ///     - player: VPlayer being used
    func playbackDidEnd(player: VPlayer)
    
    /// Notifies when player starts buffering
    ///
    /// - Parameters:
    ///     - player: VPlayer being used
    func startBuffering(layer: VPlayer)
    
    /// Notifies when player ends buffering
    ///
    /// - Parameters:
    ///     - player: VPlayer being used
    func endBuffering(player: VPlayer)
    
    /// Notifies when playback fails with an error
    ///
    /// - Parameters:
    ///     - error: playback error
    func playbackDidFailed(with error: VersaPlayerPlaybackError)
    
}
